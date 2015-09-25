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
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondStoryBoard"];
    self.imageView.image = [UIImage imageNamed:@"tiger"];
    
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

-(IBAction)displayImagePicker:(id)sender
{
        UIImagePickerController * pickerView = [UIImagePickerController new];
        pickerView.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:pickerView
                       animated:YES
                     completion:nil];
}

- (IBAction)displayActivityVC:(id)sender {

    UIActivityViewController *activityVC = [[UIActivityViewController alloc]initWithActivityItems:@[self.imageView.image]
                                                                            applicationActivities:nil];
    [self presentViewController:activityVC
                       animated:YES
                     completion:nil];
}

- (IBAction)displayAlertView:(id)sender {
    UIAlertController *alertVC = [UIAlertController new];
    alertVC.title = @"AlertView Title";
    alertVC.message = @"Alert message";
    
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"Ok"
                                                          style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction *action) {
                                                            [alertVC dismissViewControllerAnimated:YES
                                                                                        completion:nil];
                                                        }];
    [alertVC addAction:alertAction];
                                  
    [self presentViewController:alertVC
                       animated:YES
                     completion:nil];
}
@end
