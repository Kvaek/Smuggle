#import <Cephei/HBPreferences.h>
#import "SparkAppList.h"
#include <RemoteLog.h>

#ifdef DEBUG
	#define log(fmt, ...) RLog((@"[RLOG]: " fmt), ##__VA_ARGS__)
#else
	#define log(s, ...)
#endif

BOOL tweakEnabled;

@interface SBDisplayItem: NSObject
@property (nonatomic,copy,readonly) NSString * bundleIdentifier;
@end

@interface SBAppLayout : NSObject
-(NSDictionary *)rolesToLayoutItemsMap;
@end

@interface SBFluidSwitcherItemContainer : UIView
@property (nonatomic,retain) UIView* contentView; 
-(id)_createScrollView;
@end

@interface SBReusableSnapshotItemContainer : SBFluidSwitcherItemContainer
@property (nonatomic,retain) SBAppLayout * snapshotAppLayout;  
@end

@interface SpringBoard
-(id)_accessibilityFrontMostApplication;
@end

@interface SBApplication : NSObject
@property (nonatomic,readonly) NSString * bundleIdentifier; 
@end

@interface SBAppSwitcherModel : NSObject
+(id)sharedInstance;
-(void)hide:(id)arg1;
@end
@interface SBApplicationIcon : NSObject
-(NSString *)applicationBundleID;
@end

@interface UIApplication()
-(void)_simulateHomeButtonPress;
@end

@interface SBFluidSwitcherContentView : UIView

@interface SBFluidSwitcherViewController
+(id)sharedInstance;
-(void)hideContainer:(SBReusableSnapshotItemContainer*)container;
@property (nonatomic,retain) NSMutableDictionary * visibleItemContainers;
@end

// Yay, interfaces...

%group Smuggle
%hook SBAppSwitcherModel
static SBAppSwitcherModel *__strong SBAppSwitcherModelInstance;
-(id)init {
	id r = %orig;
	SBAppSwitcherModelInstance = r;
	return r;
}
%new
+(id)sharedInstance {
	return SBAppSwitcherModelInstance;
}
%end

%hook SBFluidSwitcherViewController
static SBFluidSwitcherViewController *__strong SBFluidSwitcherViewControllerInstance;
%new
+(id)sharedInstance {
	return SBFluidSwitcherViewControllerInstance;
}
%new
-(void)hideContainer:(SBReusableSnapshotItemContainer*)container {
	SBAppLayout *appLayout = [container snapshotAppLayout];
	SBAppSwitcherModel *appSwitcherModel = [%c(SBAppSwitcherModel) sharedInstance];
	[appSwitcherModel hide:appLayout];
	[self.visibleItemContainers removeObjectForKey:appLayout];
	//[[UIApplication sharedApplication] _simulateHomeButtonPress];
}

-(id)init {
	id r = %orig;
	SBFluidSwitcherViewControllerInstance = r;
	return r;
}
-(void)_addVisibleItemContainerForAppLayout:(SBAppLayout*)appLayout  { 
	%orig; 
	SBDisplayItem *appDisplay = [appLayout.rolesToLayoutItemsMap objectForKey:@1];
	NSString *bundleID = appDisplay.bundleIdentifier;

	if([SparkAppList doesIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsSwitcher" containBundleIdentifier:bundleID]) {
		SBApplication *currentApp = [(SpringBoard*)[UIApplication sharedApplication] _accessibilityFrontMostApplication];
		NSString *currentAppBundle = [currentApp bundleIdentifier];

		if(bundleID != currentAppBundle) {
			SBAppSwitcherModel *appSwitcherModel = [%c(SBAppSwitcherModel) sharedInstance];
			[appSwitcherModel hide:appLayout]; 
		}
	}
}
-(void)scrollViewKillingProgressUpdated:(CGFloat)arg1 ofContainer:(id)arg2 {
    if (arg1 < 0.25) {
		[self hideContainer:arg2];
    }else {
		%orig(arg1, arg2);
	}
}
%end


%hook SBIconListModel
-(id)insertIcon:(id)arg1 atIndex:(unsigned long long)arg2 options:(unsigned long long)arg3  { 
	if([SparkAppList doesIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsHS" containBundleIdentifier:[arg1 applicationBundleID]]){
		return nil;
	}else {
		return %orig; 
	}
}
-(BOOL)addIcon:(id)arg1 asDirty:(BOOL)arg2  { 
	if([SparkAppList doesIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsHS" containBundleIdentifier:[arg1 applicationBundleID]]){
		return nil;
	}else {
		return %orig; 
	}
}
%end

%end

%ctor {
	// Prefs
	HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"eu.kvaek.smuggleprefs"];
	[preferences registerBool:&tweakEnabled default:NO forKey:@"tweakEnabled"];

	if(tweakEnabled) {
		log(@"Loading tweak..");
		%init(Smuggle);
	}
}