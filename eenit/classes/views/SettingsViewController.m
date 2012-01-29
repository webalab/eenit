//
//  SettingsViewController.m
//  eenit
//
//  Created by Antonio Perez Salas on 12-01-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SettingsViewController.h"
#import "LocalStorage.h"

@implementation SettingsViewController

@synthesize soundFx,bgMusic;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [soundFx setOn:[[LocalStorage getSettingWithKey:@"soundFx"] boolValue] ];
    [bgMusic setOn:[[LocalStorage getSettingWithKey:@"backgroundMusic"] boolValue] ];    
    //
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(IBAction)close:(id)sender{
    [self dismissModalViewControllerAnimated:YES];
}


-(IBAction)soundSwitchChanged:(id)sender{
    [LocalStorage setSetting:[NSNumber numberWithBool:[soundFx isOn]] forKey:@"soundFx"];
}
-(IBAction)bgMusicSwitchChanged:(id)sender{
    [LocalStorage setSetting:[NSNumber numberWithBool:[bgMusic isOn]] forKey:@"backgroundMusic"];
}



@end
