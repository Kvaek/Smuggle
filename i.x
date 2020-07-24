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

@interface SBAppSwitcherReusableSnapshotView : SBFluidSwitcherItemContainer
@property (nonatomic,retain) SBAppLayout * appLayout;
@end
@interface SBReusableSnapshotItemContainer
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
// Yay, interfaces...

%group Smuggle
%hook SBAppSwitcherModel
static SBAppSwitcherModel *__strong sharedInstance;
-(id)init {
	id r = %orig;
	sharedInstance = r;
	return r;
}
%new
+(id)sharedInstance {
	return sharedInstance;
}
%end

%hook SBFluidSwitcherItemContainer
-(void)layoutSubviews {
	%orig;

	SBAppSwitcherReusableSnapshotView *snapshotView = (SBAppSwitcherReusableSnapshotView*)self.contentView;
	SBAppLayout *appLayout = snapshotView.appLayout;
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