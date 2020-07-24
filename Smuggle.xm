#import "Smuggle.h"

%group Smuggle
%hook SBAppSwitcherModel
-(id)appLayoutsIncludingHiddenAppLayouts:(BOOL)arg1  { 
	id r;
	if(!editMode){
		r = %orig(NO);
	}else {
		r = %orig(YES);
	}
	
	return r; 
}
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

%hook SBTransitionSwitcherModifierEvent
-(long long)toEnvironmentMode { 
	long long r = %orig; 
	if(r == 2 && button) {
		[UIView animateWithDuration:0.4 animations:^ {
			button.alpha = 1;
			buttonLabel.alpha = 1;
		}];
	}
	return r; 
}
-(long long)fromEnvironmentMode { 
	long long r = %orig; 
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
%end

%hook SBMainSwitcherViewController
-(BOOL)toggleMainSwitcherNoninteractivelyWithSource:(long long)arg1 animated:(BOOL)arg2 {
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

	return %orig;
}
%new
-(void)buttonPressed:(UIButton*)sender {
	if(!editMode) {
		editMode = YES;
		buttonLabel.text = @"Done";
		[[%c(SBMainSwitcherViewController) sharedInstance] toggleMainSwitcherNoninteractivelyWithSource:1 animated:NO];
		[[%c(SBMainSwitcherViewController) sharedInstance] toggleMainSwitcherNoninteractivelyWithSource:1 animated:NO];
	} else {
		editMode = NO;
		buttonLabel.text = @"Edit";
		[[%c(SBMainSwitcherViewController) sharedInstance] toggleMainSwitcherNoninteractivelyWithSource:1 animated:NO];
		[[%c(SBMainSwitcherViewController) sharedInstance] toggleMainSwitcherNoninteractivelyWithSource:1 animated:NO];
	}
}
%end

%hook SBSwitcherAppSuggestionContentView

-(void)didMoveToWindow {
	%orig;

}
%end


%hook SBFluidSwitcherItemContainer
-(void)_handlePageViewTap:(id)arg1 {
	if(!editMode){
		%orig;
	} else {
		[self handleTap:arg1];
	}
}
%new
-(void)handleTap:(UITapGestureRecognizer*)gesture {
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
-(void)layoutSubviews {
	%orig;

	SBAppSwitcherReusableSnapshotView *snapshotView = (SBAppSwitcherReusableSnapshotView*)self.contentView;
	SBAppLayout *appLayout = snapshotView.appLayout;
	SBDisplayItem *appDisplay = [appLayout.rolesToLayoutItemsMap objectForKey:@1];
	NSString *bundleID = appDisplay.bundleIdentifier;

	if([SparkAppList doesIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsSwitcher" containBundleIdentifier:bundleID]) {
		SBApplication *currentApp = [(SpringBoard*)[UIApplication sharedApplication] _accessibilityFrontMostApplication];
		NSString *currentAppBundle = [currentApp bundleIdentifier];
		if(currentAppBundle == bundleID) return;

		SBAppSwitcherModel *appSwitcherModel = [%c(SBAppSwitcherModel) sharedInstance];
		if(editMode) {
			[self setAlpha:0.5];
		} else {
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