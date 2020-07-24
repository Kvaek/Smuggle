#line 1 "Smuggle.xm"
#import "Smuggle.h"


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

@class SBMainSwitcherViewController; @class SBIconListModel; @class SBFluidSwitcherItemContainer; @class SBTransitionSwitcherModifierEvent; @class SBSwitcherAppSuggestionContentView; @class SBAppSwitcherModel; 

static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$SBAppSwitcherModel(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("SBAppSwitcherModel"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$SBMainSwitcherViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("SBMainSwitcherViewController"); } return _klass; }
#line 3 "Smuggle.xm"
static id (*_logos_orig$Smuggle$SBAppSwitcherModel$appLayoutsIncludingHiddenAppLayouts$)(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherModel* _LOGOS_SELF_CONST, SEL, BOOL); static id _logos_method$Smuggle$SBAppSwitcherModel$appLayoutsIncludingHiddenAppLayouts$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherModel* _LOGOS_SELF_CONST, SEL, BOOL); static SBAppSwitcherModel* (*_logos_orig$Smuggle$SBAppSwitcherModel$init)(_LOGOS_SELF_TYPE_INIT SBAppSwitcherModel*, SEL) _LOGOS_RETURN_RETAINED; static SBAppSwitcherModel* _logos_method$Smuggle$SBAppSwitcherModel$init(_LOGOS_SELF_TYPE_INIT SBAppSwitcherModel*, SEL) _LOGOS_RETURN_RETAINED; static id _logos_meta_method$Smuggle$SBAppSwitcherModel$sharedInstance(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode)(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST, SEL); static long long _logos_method$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode)(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST, SEL); static long long _logos_method$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$Smuggle$SBMainSwitcherViewController$toggleMainSwitcherNoninteractivelyWithSource$animated$)(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST, SEL, long long, BOOL); static BOOL _logos_method$Smuggle$SBMainSwitcherViewController$toggleMainSwitcherNoninteractivelyWithSource$animated$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST, SEL, long long, BOOL); static void _logos_method$Smuggle$SBMainSwitcherViewController$buttonPressed$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST, SEL, UIButton*); static void (*_logos_orig$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST, SEL); static void _logos_method$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Smuggle$SBFluidSwitcherItemContainer$_handlePageViewTap$)(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Smuggle$SBFluidSwitcherItemContainer$_handlePageViewTap$(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$Smuggle$SBFluidSwitcherItemContainer$handleTap$(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST, SEL, UITapGestureRecognizer*); static void (*_logos_orig$Smuggle$SBFluidSwitcherItemContainer$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST, SEL); static void _logos_method$Smuggle$SBFluidSwitcherItemContainer$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$Smuggle$SBIconListModel$insertIcon$atIndex$options$)(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, unsigned long long, unsigned long long); static id _logos_method$Smuggle$SBIconListModel$insertIcon$atIndex$options$(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, unsigned long long, unsigned long long); static BOOL (*_logos_orig$Smuggle$SBIconListModel$addIcon$asDirty$)(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, BOOL); static BOOL _logos_method$Smuggle$SBIconListModel$addIcon$asDirty$(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, BOOL); 

static id _logos_method$Smuggle$SBAppSwitcherModel$appLayoutsIncludingHiddenAppLayouts$(_LOGOS_SELF_TYPE_NORMAL SBAppSwitcherModel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1)  { 
	id r;
	if(!editMode){
		r = _logos_orig$Smuggle$SBAppSwitcherModel$appLayoutsIncludingHiddenAppLayouts$(self, _cmd, NO);
	}else {
		r = _logos_orig$Smuggle$SBAppSwitcherModel$appLayoutsIncludingHiddenAppLayouts$(self, _cmd, YES);
	}
	
	return r; 
}
static SBAppSwitcherModel *__strong sharedInstance;
static SBAppSwitcherModel* _logos_method$Smuggle$SBAppSwitcherModel$init(_LOGOS_SELF_TYPE_INIT SBAppSwitcherModel* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
	id r = _logos_orig$Smuggle$SBAppSwitcherModel$init(self, _cmd);
	sharedInstance = r;
	return r;
}

static id _logos_meta_method$Smuggle$SBAppSwitcherModel$sharedInstance(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return sharedInstance;
}



static long long _logos_method$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { 
	long long r = _logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode(self, _cmd); 
	if(r == 2 && button) {
		[UIView animateWithDuration:0.4 animations:^ {
			button.alpha = 1;
			buttonLabel.alpha = 1;
		}];
	}
	return r; 
}
static long long _logos_method$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { 
	long long r = _logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode(self, _cmd); 
	if(r == 2 && button) {
		[UIView animateWithDuration:0.15 animations:^ {
			button.alpha = 0;
			buttonLabel.alpha = 0;
		}];
	}
	if(editMode) {
		editMode = NO;
		buttonLabel.text = @"Edit";
	}
	return r; 
}



static BOOL _logos_method$Smuggle$SBMainSwitcherViewController$toggleMainSwitcherNoninteractivelyWithSource$animated$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, BOOL arg2) {
	UIView *view1 = MSHookIvar<UIView*>(self, "_floatingSwitcherDimmingView");
	UIView *view = view1.superview;
	if(!button){
		button = [UIButton buttonWithType:UIButtonTypeCustom];
		[button addTarget:self action:@selector(buttonPressed:)
		forControlEvents:UIControlEventTouchUpInside];
		button.layer.cornerRadius = 16;
		button.clipsToBounds = YES;
		[view insertSubview:button atIndex:2];

		button.translatesAutoresizingMaskIntoConstraints = false;
		[button.centerXAnchor constraintEqualToAnchor:view.centerXAnchor constant:0].active = YES;
		[button.bottomAnchor constraintEqualToAnchor:view.bottomAnchor constant:-40].active = YES;
		[button.widthAnchor constraintEqualToAnchor: view.widthAnchor multiplier:0.16].active = YES;
		[button.heightAnchor constraintEqualToAnchor: view.heightAnchor multiplier:0.045].active = YES;


		UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
		effectView.frame = button.bounds;
		effectView.userInteractionEnabled = NO;
		effectView.alpha = 0.60;
		effectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
		[button addSubview:effectView];


		buttonLabel = [[UILabel alloc]initWithFrame:button.bounds];
		buttonLabel.text = @"Edit";
		buttonLabel.font = [UIFont fontWithName:@"Arial-BoldMT" size:16];
		buttonLabel.textAlignment = NSTextAlignmentCenter;
		buttonLabel.textColor = [UIColor whiteColor];
		[view insertSubview:buttonLabel atIndex:1];

		buttonLabel.translatesAutoresizingMaskIntoConstraints = false;
		[buttonLabel.topAnchor constraintEqualToAnchor:button.topAnchor constant:0].active = YES;
		[buttonLabel.bottomAnchor constraintEqualToAnchor:button.bottomAnchor constant:0].active = YES;
		[buttonLabel.leftAnchor constraintEqualToAnchor:button.leftAnchor constant:0].active = YES;
		[buttonLabel.rightAnchor constraintEqualToAnchor:button.rightAnchor constant:0].active = YES;
	}

	return _logos_orig$Smuggle$SBMainSwitcherViewController$toggleMainSwitcherNoninteractivelyWithSource$animated$(self, _cmd, arg1, arg2);
}

static void _logos_method$Smuggle$SBMainSwitcherViewController$buttonPressed$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIButton* sender) {
	if(!editMode) {
		editMode = YES;
		buttonLabel.text = @"Done";
		[[_logos_static_class_lookup$SBMainSwitcherViewController() sharedInstance] toggleMainSwitcherNoninteractivelyWithSource:1 animated:NO];
		[[_logos_static_class_lookup$SBMainSwitcherViewController() sharedInstance] toggleMainSwitcherNoninteractivelyWithSource:1 animated:NO];
	} else {
		editMode = NO;
		buttonLabel.text = @"Edit";
		[[_logos_static_class_lookup$SBMainSwitcherViewController() sharedInstance] toggleMainSwitcherNoninteractivelyWithSource:1 animated:NO];
		[[_logos_static_class_lookup$SBMainSwitcherViewController() sharedInstance] toggleMainSwitcherNoninteractivelyWithSource:1 animated:NO];
	}
}




static void _logos_method$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow(self, _cmd);

}




static void _logos_method$Smuggle$SBFluidSwitcherItemContainer$_handlePageViewTap$(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
	if(!editMode){
		_logos_orig$Smuggle$SBFluidSwitcherItemContainer$_handlePageViewTap$(self, _cmd, arg1);
	} else {
		[self handleTap:arg1];
	}
}

static void _logos_method$Smuggle$SBFluidSwitcherItemContainer$handleTap$(_LOGOS_SELF_TYPE_NORMAL SBFluidSwitcherItemContainer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITapGestureRecognizer* gesture) {
	if(gesture.state != UIGestureRecognizerStateEnded) return;
	SBReusableSnapshotItemContainer *container = (SBReusableSnapshotItemContainer*)gesture.view;

	SBAppLayout *appLayout = container.snapshotAppLayout;
	SBDisplayItem *appDisplay = [appLayout.rolesToLayoutItemsMap objectForKey:@1];
	NSString *bundleID = appDisplay.bundleIdentifier;

	if(![SparkAppList doesIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsSwitcher" containBundleIdentifier:bundleID]) {
		[SparkAppList addBundleID:bundleID forIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsSwitcher"];
		[container setAlpha:0.5];
	}else {
		[SparkAppList removeBundleID:bundleID forIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsSwitcher"];
		[container setAlpha:1];
	}
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
		if(currentAppBundle == bundleID) return;

		SBAppSwitcherModel *appSwitcherModel = [_logos_static_class_lookup$SBAppSwitcherModel() sharedInstance];
		if(editMode) {
			[self setAlpha:0.5];
		} else {
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



static __attribute__((constructor)) void _logosLocalCtor_7fbd77b1(int __unused argc, char __unused **argv, char __unused **envp) {
	
	HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"eu.kvaek.smuggleprefs"];
	[preferences registerBool:&tweakEnabled default:NO forKey:@"tweakEnabled"];

	if(tweakEnabled) {
		log(@"Loading tweak..");
		{Class _logos_class$Smuggle$SBAppSwitcherModel = objc_getClass("SBAppSwitcherModel"); Class _logos_metaclass$Smuggle$SBAppSwitcherModel = object_getClass(_logos_class$Smuggle$SBAppSwitcherModel); { MSHookMessageEx(_logos_class$Smuggle$SBAppSwitcherModel, @selector(appLayoutsIncludingHiddenAppLayouts:), (IMP)&_logos_method$Smuggle$SBAppSwitcherModel$appLayoutsIncludingHiddenAppLayouts$, (IMP*)&_logos_orig$Smuggle$SBAppSwitcherModel$appLayoutsIncludingHiddenAppLayouts$);}{ MSHookMessageEx(_logos_class$Smuggle$SBAppSwitcherModel, @selector(init), (IMP)&_logos_method$Smuggle$SBAppSwitcherModel$init, (IMP*)&_logos_orig$Smuggle$SBAppSwitcherModel$init);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_metaclass$Smuggle$SBAppSwitcherModel, @selector(sharedInstance), (IMP)&_logos_meta_method$Smuggle$SBAppSwitcherModel$sharedInstance, _typeEncoding); }Class _logos_class$Smuggle$SBTransitionSwitcherModifierEvent = objc_getClass("SBTransitionSwitcherModifierEvent"); { MSHookMessageEx(_logos_class$Smuggle$SBTransitionSwitcherModifierEvent, @selector(toEnvironmentMode), (IMP)&_logos_method$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode, (IMP*)&_logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode);}{ MSHookMessageEx(_logos_class$Smuggle$SBTransitionSwitcherModifierEvent, @selector(fromEnvironmentMode), (IMP)&_logos_method$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode, (IMP*)&_logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode);}Class _logos_class$Smuggle$SBMainSwitcherViewController = objc_getClass("SBMainSwitcherViewController"); { MSHookMessageEx(_logos_class$Smuggle$SBMainSwitcherViewController, @selector(toggleMainSwitcherNoninteractivelyWithSource:animated:), (IMP)&_logos_method$Smuggle$SBMainSwitcherViewController$toggleMainSwitcherNoninteractivelyWithSource$animated$, (IMP*)&_logos_orig$Smuggle$SBMainSwitcherViewController$toggleMainSwitcherNoninteractivelyWithSource$animated$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UIButton*), strlen(@encode(UIButton*))); i += strlen(@encode(UIButton*)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$Smuggle$SBMainSwitcherViewController, @selector(buttonPressed:), (IMP)&_logos_method$Smuggle$SBMainSwitcherViewController$buttonPressed$, _typeEncoding); }Class _logos_class$Smuggle$SBSwitcherAppSuggestionContentView = objc_getClass("SBSwitcherAppSuggestionContentView"); { MSHookMessageEx(_logos_class$Smuggle$SBSwitcherAppSuggestionContentView, @selector(didMoveToWindow), (IMP)&_logos_method$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow, (IMP*)&_logos_orig$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow);}Class _logos_class$Smuggle$SBFluidSwitcherItemContainer = objc_getClass("SBFluidSwitcherItemContainer"); { MSHookMessageEx(_logos_class$Smuggle$SBFluidSwitcherItemContainer, @selector(_handlePageViewTap:), (IMP)&_logos_method$Smuggle$SBFluidSwitcherItemContainer$_handlePageViewTap$, (IMP*)&_logos_orig$Smuggle$SBFluidSwitcherItemContainer$_handlePageViewTap$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITapGestureRecognizer*), strlen(@encode(UITapGestureRecognizer*))); i += strlen(@encode(UITapGestureRecognizer*)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$Smuggle$SBFluidSwitcherItemContainer, @selector(handleTap:), (IMP)&_logos_method$Smuggle$SBFluidSwitcherItemContainer$handleTap$, _typeEncoding); }{ MSHookMessageEx(_logos_class$Smuggle$SBFluidSwitcherItemContainer, @selector(layoutSubviews), (IMP)&_logos_method$Smuggle$SBFluidSwitcherItemContainer$layoutSubviews, (IMP*)&_logos_orig$Smuggle$SBFluidSwitcherItemContainer$layoutSubviews);}Class _logos_class$Smuggle$SBIconListModel = objc_getClass("SBIconListModel"); { MSHookMessageEx(_logos_class$Smuggle$SBIconListModel, @selector(insertIcon:atIndex:options:), (IMP)&_logos_method$Smuggle$SBIconListModel$insertIcon$atIndex$options$, (IMP*)&_logos_orig$Smuggle$SBIconListModel$insertIcon$atIndex$options$);}{ MSHookMessageEx(_logos_class$Smuggle$SBIconListModel, @selector(addIcon:asDirty:), (IMP)&_logos_method$Smuggle$SBIconListModel$addIcon$asDirty$, (IMP*)&_logos_orig$Smuggle$SBIconListModel$addIcon$asDirty$);}}
	}
}
