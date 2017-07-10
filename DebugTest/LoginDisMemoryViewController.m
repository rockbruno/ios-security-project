//
//  LoginDisMemoryViewController.m
//  DebugTest
//
//  Created by Bruno Rocha on 7/9/17.
//  Copyright © 2017 Bruno Rocha. All rights reserved.
//

#import "LoginDisMemoryViewController.h"

@interface LoginDisMemoryViewController ()

@property (weak, nonatomic) IBOutlet UITextField *passField;

@end

@implementation LoginDisMemoryViewController

- (IBAction)loginButtonTouched:(id)sender {
    BOOL result = [_passField.text isEqualToString: @"MyPass"];
    if (result) {
        [self performSegueWithIdentifier:@"success" sender:nil];
    } else {
        [self displayLoginError];
    }
}

- (void)displayLoginError {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Alert"
                                                                   message:@"Incorrect password."
                                                            preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];

    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
