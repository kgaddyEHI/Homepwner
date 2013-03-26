//
//  ItemsViewController.h
//  Homepwner
//
//  Created by kgaddy on 3/26/13.
//  Copyright (c) 2013 com.kgaddy. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ItemsViewController : UITableViewController
{
    IBOutlet UIView *headerView;
}
-(UIView *)headerView;
-(IBAction)addNewItem:(id)sender;
-(IBAction)toggleEditingMode:(id)sender;
@end
