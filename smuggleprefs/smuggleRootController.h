#import <Preferences/PSListController.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBListController.h>
#import <Cephei/HBRespringController.h>
#import <CepheiPrefs/HBAppearanceSettings.h>
#import <Cephei/HBPreferences.h>

@interface smuggleRootController : HBRootListController
    @property (nonatomic, retain) UIBarButtonItem *respringButton;
    - (void)respring;
@end

@interface AppSelector : HBListController
@end
