#include "smuggleRootController.h"
#import "SparkAppListTableViewController.h"

@implementation smuggleRootController

-(NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)respring {
	[HBRespringController respringAndReturnTo:[NSURL URLWithString:@"prefs:root=Smuggle"]];
}

-(void)reset {
	HBPreferences* prefs = [HBPreferences preferencesForIdentifier:@"eu.kvaek.smuggleprefs"];
	if(prefs != nil) {
		[prefs removeAllObjects];
	}
	[self respring];
}

-(void)selectHiddenAppsSwitcher {
    SparkAppListTableViewController* s = [[SparkAppListTableViewController alloc] initWithIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsSwitcher"];

    [self.navigationController pushViewController:s animated:YES];
    self.navigationItem.hidesBackButton = FALSE;
}

-(void)selectHiddenAppsHS {
    SparkAppListTableViewController* s = [[SparkAppListTableViewController alloc] initWithIdentifier:@"eu.kvaek.smuggleprefs" andKey:@"hiddenAppsHS"];

    [self.navigationController pushViewController:s animated:YES];
    self.navigationItem.hidesBackButton = FALSE;
}

@synthesize respringButton;

-(void)viewDidLoad {
	[super viewDidLoad];
		HBAppearanceSettings *appearanceSettings = [[HBAppearanceSettings alloc] init];
		appearanceSettings.tintColor = [UIColor colorWithRed:13.0 / 255 green:71.0 / 255 blue:161.0 / 255 alpha:1];
		appearanceSettings.tableViewBackgroundColor = [UIColor colorWithWhite:21.0f / 255.0f alpha:1];
		appearanceSettings.tableViewCellSeparatorColor = [UIColor colorWithWhite:0 alpha:0];
		self.hb_appearanceSettings = appearanceSettings;
		self.respringButton = [[UIBarButtonItem alloc] 
			initWithTitle:@"Apply" 
			style:UIBarButtonItemStylePlain
			target:self 
			action:@selector(respring)];
		self.respringButton.tintColor = [UIColor colorWithRed:0.0 / 255 green:200.0 / 255 blue:83.0 / 255 alpha:1];
		self.navigationItem.rightBarButtonItem = self.respringButton;
}
@end

@implementation AppSelector
-(NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"AppSelector" target:self];
	}

	return _specifiers;
}

-(void)viewDidLoad {
	[super viewDidLoad];
	HBAppearanceSettings *appearanceSettings = [[HBAppearanceSettings alloc] init];
	appearanceSettings.tintColor = [UIColor colorWithRed:13.0 / 255 green:71.0 / 255 blue:161.0 / 255 alpha:1];
	appearanceSettings.tableViewBackgroundColor = [UIColor colorWithWhite:21.0f / 255.0f alpha:1];
	appearanceSettings.tableViewCellSeparatorColor = [UIColor colorWithWhite:0 alpha:0];
	self.hb_appearanceSettings = appearanceSettings;
}
@end
