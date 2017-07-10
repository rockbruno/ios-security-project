//
//  ViewController.m
//  techtalkProj
//
//  Created by Bruno Rocha on 3/3/17.
//  Copyright © 2017 Bruno Rocha. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController  ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *passField;

@end

@implementation LoginViewController

- (IBAction)loginButtonTouched:(id)sender {
    BOOL result = [_passField.text isEqualToString: @"Skip"];
    if (result) {
        [self didLoginSuccesfully];
    } else {
        [self displayLoginError];
    }
}

- (void)didLoginSuccesfully {
    [self performSegueWithIdentifier:@"success" sender:nil];
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
