#line 1 "Tweak.xm"
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
@end

@interface SBAppSwitcherReusableSnapshotView : SBFluidSwitcherItemContainer
@property (nonatomic,retain) SBAppLayout * appLayout;
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

@interface UISwipeGestureRecognizer()
-(void)setMinimumPrimaryMovement:(double)arg1;
-(void)setMaximumPrimaryMovement:(double)arg1;
-(void)setMinimumSecondaryMovement:(double)arg1;
-(void)setMaximumSecondaryMovement:(double)arg1;
-(void)setMaximumDuration:(double)arg1;
@end



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBAppSwitcherModel; @class SBIconListModel; @class SBFluidSwitcherItemContainer; 

static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$SBAppSwitcherModel(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("SBAppSwitcherModel"); } return _klass; }
#line 54 "Tweak.xm"
static SBAppSwitcherModel* (*_logos_orig$Smuggle$SBAppSwitcherModel$init)(_LOGOS_SELF_TYPE_INIT SBAppSwitcherModel*, SEL) _LOGOS_RETURN_RETAINED; static SBAppSwitcherModel* _logos_method$Smuggle$SBAppSwitcherModel$init(_LOGOS_SELF_TYPE_INIT SBAppSwitcherModel*, SEL) _LOGOS_RETURN_RETAINED; static id _logos_meta_method$Smuggle$SBAppSwitcherModel$sharedInstance(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static void _logos_method$Smuggle$SBFluidSwitcherItemContainer$hideContainer(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$Smuggle$SBFluidSwitcherItemContainer$_createScrollView)(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST, SEL); static id _logos_method$Smuggle$SBFluidSwitcherItemContainer$_createScrollView(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Smuggle$SBFluidSwitcherItemContainer$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST, SEL); static void _logos_method$Smuggle$SBFluidSwitcherItemContainer$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$Smuggle$SBIconListModel$insertIcon$atIndex$options$)(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, unsigned long long, unsigned long long); static id _logos_method$Smuggle$SBIconListModel$insertIcon$atIndex$options$(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, unsigned long long, unsigned long long); static BOOL (*_logos_orig$Smuggle$SBIconListModel$addIcon$asDirty$)(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, BOOL); static BOOL _logos_method$Smuggle$SBIconListModel$addIcon$asDirty$(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, BOOL); 

static SBAppSwitcherModel *__strong sharedInstance;
static SBAppSwitcherModel* _logos_method$Smuggle$SBAppSwitcherModel$init(_LOGOS_SELF_TYPE_INIT SBAppSwitcherModel* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
	id r = _logos_orig$Smuggle$SBAppSwitcherModel$init(self, _cmd);
	sharedInstance = r;
	return r;
}

static id _logos_meta_method$Smuggle$SBAppSwitcherModel$sharedInstance(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return sharedInstance;
}


@interface UISwipeGestureRecognizer()
-(void)setMinimumPrimaryMovement:(double)arg1;
-(void)setMaximumPrimaryMovement:(double)arg1;
-(void)setMinimumSecondaryMovement:(double)arg1;
-(void)setMaximumSecondaryMovement:(double)arg1;
-(void)setMaximumDuration:(double)arg1;
@end



static void _logos_method$Smuggle$SBFluidSwitcherItemContainer$hideContainer(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	log("swipe");
}

static id _logos_method$Smuggle$SBFluidSwitcherItemContainer$_createScrollView(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	UISwipeGestureRecognizer *gesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(hideContainer)];
	[gesture setNumberOfTouchesRequired:1];
	[gesture setDirection: UISwipeGestureRecognizerDirectionDown];
	[self addGestureRecognizer:gesture];

    return _logos_orig$Smuggle$SBFluidSwitcherItemContainer$_createScrollView(self, _cmd);
}

static void _logos_method$Smuggle$SBFluidSwitcherItemContainer$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$Smuggle$SBFluidSwitcherItemContainer$layoutSubviews(self, _cmd);

	SBAppSwitcherReusableSnapshotView *snapshotView = (SBAppSwitcherReusableSnapshotView*)self.contentView;
	SBAppLayout *appLayout = snapshotView.appLayout;
	SBDisplayItem *appDisplay = [appLayout.rolesToLayoutItemsMap objectForKey:@1];
	NSString *bundleID = appDisplay.bundleIdentifier;

	if([SparkAppList doesIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsSwitcher" containBundleIdentifier:bundleID]) {
		SBApplication *currentApp = [(SpringBoard*)[UIApplication sharedApplication] _accessibilityFrontMostApplication];
		NSString *currentAppBundle = [currentApp bundleIdentifier];

		if(bundleID != currentAppBundle) {
			SBAppSwitcherModel *appSwitcherModel = [_logos_static_class_lookup$SBAppSwitcherModel() sharedInstance];
			[appSwitcherModel hide:appLayout]; 
		}
	}
}



static id _logos_method$Smuggle$SBIconListModel$insertIcon$atIndex$options$(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2, unsigned long long arg3)  { 
	if([SparkAppList doesIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsHS" containBundleIdentifier:[arg1 applicationBundleID]]){
		return nil;
	}else {
		return _logos_orig$Smuggle$SBIconListModel$insertIcon$atIndex$options$(self, _cmd, arg1, arg2, arg3); 
	}
}
static BOOL _logos_method$Smuggle$SBIconListModel$addIcon$asDirty$(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, BOOL arg2)  { 
	if([SparkAppList doesIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsHS" containBundleIdentifier:[arg1 applicationBundleID]]){
		return nil;
	}else {
		return _logos_orig$Smuggle$SBIconListModel$addIcon$asDirty$(self, _cmd, arg1, arg2); 
	}
}




static __attribute__((constructor)) void _logosLocalCtor_c4b07c32(int __unused argc, char __unused **argv, char __unused **envp) {
	
	HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"eu.kvaek.smuggleprefs"];
	[preferences registerBool:&tweakEnabled default:NO forKey:@"tweakEnabled"];

	if(tweakEnabled) {
		log(@"Loading tweak..");
		{Class _logos_class$Smuggle$SBAppSwitcherModel = objc_getClass("SBAppSwitcherModel"); Class _logos_metaclass$Smuggle$SBAppSwitcherModel = object_getClass(_logos_class$Smuggle$SBAppSwitcherModel); { MSHookMessageEx(_logos_class$Smuggle$SBAppSwitcherModel, @selector(init), (IMP)&_logos_method$Smuggle$SBAppSwitcherModel$init, (IMP*)&_logos_orig$Smuggle$SBAppSwitcherModel$init);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_metaclass$Smuggle$SBAppSwitcherModel, @selector(sharedInstance), (IMP)&_logos_meta_method$Smuggle$SBAppSwitcherModel$sharedInstance, _typeEncoding); }Class _logos_class$Smuggle$SBFluidSwitcherItemContainer = objc_getClass("SBFluidSwitcherItemContainer"); { char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$Smuggle$SBFluidSwitcherItemContainer, @selector(hideContainer), (IMP)&_logos_method$Smuggle$SBFluidSwitcherItemContainer$hideContainer, _typeEncoding); }{ MSHookMessageEx(_logos_class$Smuggle$SBFluidSwitcherItemContainer, @selector(_createScrollView), (IMP)&_logos_method$Smuggle$SBFluidSwitcherItemContainer$_createScrollView, (IMP*)&_logos_orig$Smuggle$SBFluidSwitcherItemContainer$_createScrollView);}{ MSHookMessageEx(_logos_class$Smuggle$SBFluidSwitcherItemContainer, @selector(layoutSubviews), (IMP)&_logos_method$Smuggle$SBFluidSwitcherItemContainer$layoutSubviews, (IMP*)&_logos_orig$Smuggle$SBFluidSwitcherItemContainer$layoutSubviews);}Class _logos_class$Smuggle$SBIconListModel = objc_getClass("SBIconListModel"); { MSHookMessageEx(_logos_class$Smuggle$SBIconListModel, @selector(insertIcon:atIndex:options:), (IMP)&_logos_method$Smuggle$SBIconListModel$insertIcon$atIndex$options$, (IMP*)&_logos_orig$Smuggle$SBIconListModel$insertIcon$atIndex$options$);}{ MSHookMessageEx(_logos_class$Smuggle$SBIconListModel, @selector(addIcon:asDirty:), (IMP)&_logos_method$Smuggle$SBIconListModel$addIcon$asDirty$, (IMP*)&_logos_orig$Smuggle$SBIconListModel$addIcon$asDirty$);}}
	}
}
