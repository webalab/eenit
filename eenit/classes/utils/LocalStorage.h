//
//  LocalStorage.h
//  eenit
//
//  Created by Antonio Perez Salas on 12-01-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocalStorage : NSObject


+ (id) getSettingWithKey:(NSString *)key;
+ (void) setSetting:(id)stat forKey:(NSString *)key;

@end
