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

@interface SBApplication : NSObject
@property (nonatomic,readonly) NSString * bundleIdentifier; 
@end

@interface SBApplicationIcon : NSObject
-(NSString *)applicationBundleID;
@end

@interface SBFluidSwitcherViewController
@end

@interface SBSwitcherAppSuggestionContentView : UIView
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

@class SBSwitcherAppSuggestionContentView; @class SBTransitionSwitcherModifierEvent; @class SBIconListModel; 


#line 30 "Tweak.xm"
static long long (*_logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode)(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST, SEL); static long long _logos_method$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode)(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST, SEL); static long long _logos_method$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST, SEL); static void _logos_method$Smuggle$SBSwitcherAppSuggestionContentView$buttonPressed$(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST, SEL, UIButton*); static void (*_logos_orig$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST, SEL); static void _logos_method$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$Smuggle$SBIconListModel$insertIcon$atIndex$options$)(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, unsigned long long, unsigned long long); static id _logos_method$Smuggle$SBIconListModel$insertIcon$atIndex$options$(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, unsigned long long, unsigned long long); static BOOL (*_logos_orig$Smuggle$SBIconListModel$addIcon$asDirty$)(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, BOOL); static BOOL _logos_method$Smuggle$SBIconListModel$addIcon$asDirty$(_LOGOS_SELF_TYPE_NORMAL SBIconListModel* _LOGOS_SELF_CONST, SEL, id, BOOL); 
UIButton *button;
UILabel *buttonLabel;


static long long _logos_method$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { 
	long long r = _logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode(self, _cmd); 
	if(r == 2 && button) {
		[UIView animateWithDuration:0.3 animations:^ {
			button.alpha = 1;
			buttonLabel.alpha = 1;
		}];
	}
	return r; 
}
static long long _logos_method$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode(_LOGOS_SELF_TYPE_NORMAL SBTransitionSwitcherModifierEvent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) { 
	long long r = _logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode(self, _cmd); 
	if(r == 2 && button) {
		[UIView animateWithDuration:0.1 animations:^ {
			button.alpha = 0;
			buttonLabel.alpha = 0;
		}];
	}
	return r; 
}




static void _logos_method$Smuggle$SBSwitcherAppSuggestionContentView$buttonPressed$(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIButton* sender) {
	log(@"Knap");
}
static void _logos_method$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBSwitcherAppSuggestionContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow(self, _cmd);
	if(!button){
		button = [UIButton buttonWithType:UIButtonTypeCustom];
		[button addTarget:self action:@selector(buttonPressed:)
		forControlEvents:UIControlEventTouchUpInside];
		button.layer.cornerRadius = 16;
		button.clipsToBounds = YES;
		[self insertSubview:button atIndex:2];

		button.translatesAutoresizingMaskIntoConstraints = false;
		[button.centerXAnchor constraintEqualToAnchor:self.centerXAnchor constant:0].active = YES;
		[button.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-40].active = YES;
		[button.widthAnchor constraintEqualToAnchor: self.widthAnchor multiplier:0.16].active = YES;
		[button.heightAnchor constraintEqualToAnchor: self.heightAnchor multiplier:0.045].active = YES;


		UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
		effectView.frame = button.bounds;
		effectView.userInteractionEnabled = NO;
		effectView.alpha = 0.60;
		
		[button addSubview:effectView];


		buttonLabel = [[UILabel alloc]initWithFrame:button.bounds];
		buttonLabel.text = @"Edit";
		buttonLabel.font = [UIFont fontWithName:@"Arial-BoldMT" size:16];
		buttonLabel.textAlignment = NSTextAlignmentCenter;
		buttonLabel.textColor = [UIColor whiteColor];
		[self insertSubview:buttonLabel atIndex:1];

		buttonLabel.translatesAutoresizingMaskIntoConstraints = false;
		[buttonLabel.topAnchor constraintEqualToAnchor:button.topAnchor constant:0].active = YES;
		[buttonLabel.bottomAnchor constraintEqualToAnchor:button.bottomAnchor constant:0].active = YES;
		[buttonLabel.leftAnchor constraintEqualToAnchor:button.leftAnchor constant:0].active = YES;
		[buttonLabel.rightAnchor constraintEqualToAnchor:button.rightAnchor constant:0].active = YES;
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




static __attribute__((constructor)) void _logosLocalCtor_014781c9(int __unused argc, char __unused **argv, char __unused **envp) {
	
	HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"eu.kvaek.smuggleprefs"];
	[preferences registerBool:&tweakEnabled default:NO forKey:@"tweakEnabled"];

	if(tweakEnabled) {
		log(@"Loading tweak..");
		{Class _logos_class$Smuggle$SBTransitionSwitcherModifierEvent = objc_getClass("SBTransitionSwitcherModifierEvent"); { MSHookMessageEx(_logos_class$Smuggle$SBTransitionSwitcherModifierEvent, @selector(toEnvironmentMode), (IMP)&_logos_method$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode, (IMP*)&_logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$toEnvironmentMode);}{ MSHookMessageEx(_logos_class$Smuggle$SBTransitionSwitcherModifierEvent, @selector(fromEnvironmentMode), (IMP)&_logos_method$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode, (IMP*)&_logos_orig$Smuggle$SBTransitionSwitcherModifierEvent$fromEnvironmentMode);}Class _logos_class$Smuggle$SBSwitcherAppSuggestionContentView = objc_getClass("SBSwitcherAppSuggestionContentView"); { char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UIButton*), strlen(@encode(UIButton*))); i += strlen(@encode(UIButton*)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$Smuggle$SBSwitcherAppSuggestionContentView, @selector(buttonPressed:), (IMP)&_logos_method$Smuggle$SBSwitcherAppSuggestionContentView$buttonPressed$, _typeEncoding); }{ MSHookMessageEx(_logos_class$Smuggle$SBSwitcherAppSuggestionContentView, @selector(didMoveToWindow), (IMP)&_logos_method$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow, (IMP*)&_logos_orig$Smuggle$SBSwitcherAppSuggestionContentView$didMoveToWindow);}Class _logos_class$Smuggle$SBIconListModel = objc_getClass("SBIconListModel"); { MSHookMessageEx(_logos_class$Smuggle$SBIconListModel, @selector(insertIcon:atIndex:options:), (IMP)&_logos_method$Smuggle$SBIconListModel$insertIcon$atIndex$options$, (IMP*)&_logos_orig$Smuggle$SBIconListModel$insertIcon$atIndex$options$);}{ MSHookMessageEx(_logos_class$Smuggle$SBIconListModel, @selector(addIcon:asDirty:), (IMP)&_logos_method$Smuggle$SBIconListModel$addIcon$asDirty$, (IMP*)&_logos_orig$Smuggle$SBIconListModel$addIcon$asDirty$);}}
	}
}
