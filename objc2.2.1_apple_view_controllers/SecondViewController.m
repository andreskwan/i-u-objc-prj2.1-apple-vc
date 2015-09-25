//
//  SecondViewController.m
//  objc2.2.1_apple_view_controllers
//
//  Created by Andres Kwan on 9/24/15.
//  Copyright (c) 2015 Kwan. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

- (IBAction)goBackToPreviousVC:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

@end
