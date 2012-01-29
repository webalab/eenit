//
//  PauseViewController.h
//  eenit
//
//  Created by Antonio Perez Salas on 12-01-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameViewController.h"

@interface PauseViewController : UIViewController{
    GameViewController *papa;
}

@property (nonatomic,retain) GameViewController *papa;

-(IBAction)resume:(id)sender;
-(IBAction)quit:(id)sender;
@end
