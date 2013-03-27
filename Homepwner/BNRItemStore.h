//
//  BNRItemStore.h
//  Homepwner
//
//  Created by kgaddy on 3/26/13.
//  Copyright (c) 2013 com.kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRItem;
@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
    
}
+ (BNRItemStore *)sharedStore;
-(NSArray *)allItems;
-(BNRItem *)createItem;
-(void)removeItem: (BNRItem *)p;

@end
