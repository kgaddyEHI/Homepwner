//
//  BNRItemStore.m
//  Homepwner
//
//  Created by kgaddy on 3/26/13.
//  Copyright (c) 2013 com.kgaddy. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore
{
    
    
}
-(id)init
{
    self = [super init];
    if(self)
    {
        allItems = [[NSMutableArray alloc]init];
    }
    return self;
}

+(id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

+(BNRItemStore *)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    if(!sharedStore)
    {
        sharedStore = [[super allocWithZone:nil]init];
    }
    return sharedStore;
}

-(NSMutableArray *)allItems
{
    return allItems;
}

-(BNRItem *)createItem
{
    BNRItem *p = [BNRItem randomItem];
    if(p)
    {
       [allItems addObject:p]; 
    }
    
    return p;
}

-(void)removeItem:(BNRItem *)p
{
    [allItems removeObjectIdenticalTo:p];
}

@end
