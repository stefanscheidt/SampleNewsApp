//
//  NewsItem.h
//  SampleNewsApp
//
//  Created by Stefan Scheidt on 02.05.11.
//  Copyright (c) 2011 OPITZ CONSULTING GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface NewsItem : NSManagedObject {
@private
}
@property (nonatomic, retain) NSNumber * itemNumber;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * subtitle;
@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSNumber * unread;

@end
