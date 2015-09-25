//
//  ViewController.h
//  objc2.2.1_apple_view_controllers
//
//  Created by Andres Kwan on 9/24/15.
//  Copyright (c) 2015 Kwan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SecondViewController;

@interface ViewController : UIViewController
{
    SecondViewController *secondVC;
}

-(IBAction)fullScreen:(id)sender;
-(IBAction)pageSheet:(id)sender;
-(IBAction)formSheet:(id)sender;

@end

