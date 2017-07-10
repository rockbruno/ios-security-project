//
//  LoginTwoViewController.m
//  DebugTest
//
//  Created by Bruno Rocha on 7/9/17.
//  Copyright © 2017 Bruno Rocha. All rights reserved.
//

#import "LoginTwoViewController.h"

@interface LoginTwoViewController ()

@property (weak, nonatomic) IBOutlet UITextField *passField;

@end

@implementation LoginTwoViewController

- (IBAction)loginButtonTouched:(id)sender {
    BOOL result = [self isPasswordValid];
    if (result) {
        [self performSegueWithIdentifier:@"success" sender:nil];
    } else {
        [self displayLoginError];
    }
}

- (BOOL)isPasswordValid {
    return [_passField.text isEqualToString:@"Skip"];
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

