//
//  ViewController.m
//  techtalkProj
//
//  Created by Bruno Rocha on 3/3/17.
//  Copyright © 2017 Bruno Rocha. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController  ()

@property (weak, nonatomic) IBOutlet UITextField *passField;

@end

@implementation LoginViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (IBAction)loginButtonTouched:(id)sender {
    BOOL result = [self validatePassword: _passField.text];
    if (result) {
        [self performSegueWithIdentifier:@"success" sender:nil];
    } else {
        [self displayLoginError];
    }
}

- (BOOL)validatePassword:(NSString*) text {
    if ([text isEqual: @"MyPass"]) {
        return YES;
    } else {
        return NO;
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
