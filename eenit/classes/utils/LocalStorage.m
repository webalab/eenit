//
//  LocalStorage.m
//  eenit
//
//  Created by Antonio Perez Salas on 12-01-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LocalStorage.h"

@implementation LocalStorage



+ (id) getSettingWithKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults valueForKey:key];
}


+ (void) setSetting:(id)stat forKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:stat forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}



@end
