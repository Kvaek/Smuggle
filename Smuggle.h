#import <Cephei/HBPreferences.h>
#import "SparkAppList.h"
#include <RemoteLog.h>

#ifdef DEBUG
	#define log(fmt, ...) RLog((@"[RLOG]: " fmt), ##__VA_ARGS__)
#else
	#define log(s, ...)
#endif

@interface SBDisplayItem: NSObject
    @property (nonatomic,copy,readonly) NSString * bundleIdentifier;
@end

@interface SBApplication : NSObject
    @property (nonatomic,readonly) NSString * bundleIdentifier; 
@end

@interface SBApplicationIcon : NSObject
    -(NSString *)applicationBundleID;
@end

@interface SBFluidSwitcherViewController : UIViewController
-(id)_itemContainerForAppLayoutIfExists:(id)arg1 ;
-(void)_addVisibleItemContainerForAppLayout:(id)arg1 ;
@end

@interface SBMainSwitcherViewController : UIViewController
+(id)sharedInstance;
-(BOOL)isVisible;
-(BOOL)toggleMainSwitcherNoninteractivelyWithSource:(long long)arg1 animated:(BOOL)arg2 ;
@end

@interface SBAppLayout : NSObject
    -(NSDictionary *)rolesToLayoutItemsMap;
    @property (getter=isHidden,nonatomic,readonly) BOOL hidden;  
@end

@interface SBSwitcherAppSuggestionContentView : UIView
@end

@interface SBFluidSwitcherItemContainer : UIView
    @property (nonatomic,retain) UIView* contentView; 
    -(id)_createScrollView;
    -(void)handleTap:(UITapGestureRecognizer*)gesture;
@end
@interface SBAppSwitcherPageContentView
@end

@interface SpringBoard
    -(id)_accessibilityFrontMostApplication;
@end

@interface SBReusableSnapshotItemContainer : SBFluidSwitcherItemContainer
    @property (nonatomic,retain) SBAppLayout * snapshotAppLayout; 
@end

@interface SBAppSwitcherReusableSnapshotView : SBFluidSwitcherItemContainer
    @property (nonatomic,retain) SBAppLayout * appLayout;
@end

@interface SBAppSwitcherModel : NSObject
    +(id)sharedInstance;
    -(void)hide:(id)arg1;
    -(void)_warmUpIconsForAppLayout:(id)arg1 ;
@end
// Yay, interfaces...

BOOL tweakEnabled, editMode;
UIButton *button;
UILabel *buttonLabel;