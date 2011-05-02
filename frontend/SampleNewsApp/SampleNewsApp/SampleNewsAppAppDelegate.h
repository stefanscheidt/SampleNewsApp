//
//  SampleNewsAppAppDelegate.h
//  SampleNewsApp
//
//  Created by Stefan Scheidt on 02.05.11.
//  Copyright 2011 OPITZ CONSULTING GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleNewsAppAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
