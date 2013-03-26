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

-(id)init
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    //BNRItemStore *store = [[BNRItemStore alloc]init];
    if(self)
    {
        for(int i=0;i<5; i++)
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
    //UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    //set the  text on the cell with the description of the item.
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if(!cell)
    {
       cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    }
    BNRItem *p = [[[BNRItemStore sharedStore]allItems]objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:[p description]];
    return cell;
}

-(UIView *)headerView
{
    //if we have not loaded the header view yet
    if(!headerView)
    {
        //load the HeaderView.xib
        [[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:self options:nil];
    }
    return headerView;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self headerView];
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    //the height of the header section should be determined from the height of the view in the XIB file.
    return [[self headerView]bounds].size.height;
}

-(IBAction)toggleEditingMode:(id)sender
{
    //if we are currently in editing mode
    if([self isEditing])
    {
        //change the text button to inform the user of state
        [sender setTitle:@"Edit" forState:UIControlStateNormal];
        //turn off editing mode
        [self setEditing:NO animated:YES];
        
    }
    else{
        //change the button
        [sender setTitle:@"Done" forState:UIControlStateNormal];
        //turn off editing mode
        [self setEditing:YES animated:YES];
    }
}


@end
