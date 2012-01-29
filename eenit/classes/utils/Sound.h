
//
//  Sound.h
//  eenit
//
//  Created by Antonio Perez Salas on 12-01-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface Sound : NSObject{
    
    AVAudioPlayer *player;
    NSMutableDictionary *soundFxs;
    
}


//Music Handling stuff.
- (void) playMusic;
- (void) stopMusic;
- (void) resetMusic;


- (void) playSound:(NSString *)resource;

@end
