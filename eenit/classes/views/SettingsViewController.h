//
//  SettingsViewController.h
//  eenit
//
//  Created by Antonio Perez Salas on 12-01-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController{
    IBOutlet UISwitch *soundFx;
    IBOutlet UISwitch *bgMusic;
}

@property (nonatomic,retain) IBOutlet UISwitch *soundFx; 
@property (nonatomic,retain) IBOutlet UISwitch *bgMusic;

-(IBAction)close:(id)sender;

-(IBAction)soundSwitchChanged:(id)sender;
-(IBAction)bgMusicSwitchChanged:(id)sender;

@end
