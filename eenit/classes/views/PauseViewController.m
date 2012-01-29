//
//  PauseViewController.m
//  eenit
//
//  Created by Antonio Perez Salas on 12-01-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PauseViewController.h"
#import "GameViewController.h"

@implementation PauseViewController
@synthesize papa;

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
    //Set bagckground image. 
    UIImage *background = [UIImage imageNamed: @"pause_bg"];    
    UIImageView *imageView = [[UIImageView alloc] initWithImage: background]; 
    [self.view addSubview: imageView];
    [self.view sendSubviewToBack:imageView];
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

-(IBAction)resume:(id)sender{
    [self dismissModalViewControllerAnimated:YES];
}
-(IBAction)quit:(id)sender{
//    [self dismissModalViewControllerAnimated:YES];
    [self.papa closeAll];
//    [self dismissModalViewControllerAnimated:YES];
//    GameViewController *parent = (GameViewController *)self.parentViewController;
//    [parent close];
}





@end