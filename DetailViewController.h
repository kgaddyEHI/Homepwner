//
//  DetailViewController.h
//  Homepwner
//
//  Created by kgaddy on 4/1/13.
//  Copyright (c) 2013 com.kgaddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    __weak IBOutlet UITextField *nameText;
    __weak IBOutlet UITextField *serialtext;
    __weak IBOutlet UITextField *valueText;
    __weak IBOutlet UILabel *datelabel;
}


@end
