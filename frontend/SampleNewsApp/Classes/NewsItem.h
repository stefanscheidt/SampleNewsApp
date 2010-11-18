//
//  NewsItem.h
//  SampleNewsApp
//
//  Created by Stefan Scheidt on 15.11.10.
//  Copyright 2010 OPITZ CONSULTING GmbH. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface NewsItem :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * serNo;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * unread;
@property (nonatomic, retain) NSString * subtitle;
@property (nonatomic, retain) NSString * text;

@end



