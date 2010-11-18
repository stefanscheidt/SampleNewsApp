//
//  RootViewController.h
//  SampleNewsApp
//
//  Created by Stefan Scheidt on 15.11.10.
//  Copyright 2010 OPITZ CONSULTING GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface RootViewController : UITableViewController <NSFetchedResultsControllerDelegate> {

    NSMutableData *responseData;
    
@private
    NSFetchedResultsController *fetchedResultsController_;
    NSManagedObjectContext *managedObjectContext_;
}

@property (nonatomic, retain) NSMutableData *responseData;

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;

@end
