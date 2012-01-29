//
//  Sound.m
//  eenit
//
//  Created by Antonio Perez Salas on 12-01-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Sound.h"
#import "LocalStorage.h"

@implementation Sound



//There must be a way to optimize this. 
- (void) playSound:(NSString *)resource{
    if([[LocalStorage getSettingWithKey:@"soundFx"] boolValue]) {
        NSString *path = [NSString stringWithFormat: @"%@/%@.wav",
                          [[NSBundle mainBundle] resourcePath], resource];
        NSURL* filePath = [NSURL fileURLWithPath: path isDirectory: NO];
        SystemSoundID soundID;
//        AudioServicesCreateSystemSoundID((CFURLRef)filePath, &soundID);
        AudioServicesPlaySystemSound(soundID);
    }
}


- (void) playMusic{
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"cmm" ofType:@"mp3"];
    NSURL *soundFileURL = [NSURL URLWithString:soundFilePath];
    if( !player ){
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL error:NULL];
        player.numberOfLoops = -1; //infinite
        player.currentTime = 10;
        [player prepareToPlay];
    }
    if(![player isPlaying] && [[LocalStorage getSettingWithKey:@"backgroundMusic"] boolValue]){
        [player play];
    }
}



- (void) resetMusic{
    player.currentTime = 10;
}

- (void) stopMusic{
    if([player isPlaying]){
        [player pause];
    }   
}


@end
