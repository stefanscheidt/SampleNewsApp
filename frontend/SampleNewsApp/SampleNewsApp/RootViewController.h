//
//  RootViewController.h
//  SampleNewsApp
//
//  Created by Stefan Scheidt on 02.05.11.
//  Copyright 2011 OPITZ CONSULTING GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface RootViewController : UITableViewController <NSFetchedResultsControllerDelegate> {
    NSMutableData *responseData;
}

@property (nonatomic, retain) NSMutableData *responseData;

@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end
