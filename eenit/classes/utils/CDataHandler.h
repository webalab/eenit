//
//  CDataHandler.h
//  fcp
//
//  Created by Antonio Perez Salas on 11-08-11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <CoreData/CoreData.h>
#import <Foundation/Foundation.h>

@interface CDataHandler : NSObject

extern NSString * const dataModelID;

@property (nonatomic, retain, readonly) NSString *dataModelID;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;


- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

+ (id)sharedInstance;

@end
