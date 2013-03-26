//
//  ItemsViewController.m
//  Homepwner
//
//  Created by kgaddy on 3/26/13.
//  Copyright (c) 2013 com.kgaddy. All rights reserved.
//

#import "ItemsViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"
@implementation ItemsViewController
//<UITableViewDataSource>

-(id)init
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    //BNRItemStore *store = [[BNRItemStore alloc]init];
    if(self)
    {
        for(int i=0;i<33; i++)
        {
            [[BNRItemStore sharedStore] createItem];
        }
    }
    return self;
}


-(id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[BNRItemStore sharedStore]allItems]count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //create an instance of the UITableViewCell, with the default appearance.
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    //set the  text on the cell with the description of the item.
    BNRItem *p = [[[BNRItemStore sharedStore]allItems]objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:[p description]];
    return cell;
}

@end
