//
//  ViewController.m
//  objc2.2.1_apple_view_controllers
//
//  Created by Andres Kwan on 9/24/15.
//  Copyright (c) 2015 Kwan. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondStoryBoard"];

}

-(IBAction)formSheet:(id)sender
{
    secondVC.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:secondVC
                       animated:YES
                     completion:nil];
}

-(IBAction)pageSheet:(id)sender
{
    secondVC.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:secondVC
                       animated:YES
                     completion:nil];
}

-(IBAction)fullScreen:(id)sender
{
    secondVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:secondVC
                       animated:YES
                     completion:nil];
}

//-(IBAction)fullScreen:(id)sender
//{
//    //    UIImagePickerController * pickerView = [UIImagePickerController new];
//    //    self.secondVC.modalPresentationStyle = UIModalPresentationFormSheet;
//    //    pickerView.modalPresentationStyle = UIModalPresentationFormSheet;
//    //    pickerView.modalTransitionStyle = UIModalTransitionStylePartialCurl;
//    [self presentViewController:secondVC
//                       animated:YES
//                     completion:nil];
//}

@end
