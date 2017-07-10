//
//  PINViewController.m
//  DebugTest
//
//  Created by Bruno Rocha on 7/9/17.
//  Copyright © 2017 Bruno Rocha. All rights reserved.
//

#import "PINViewController.h"

@interface PINViewController ()

@property (weak, nonatomic) IBOutlet UITextField *passField;

@end

@implementation PINViewController

- (IBAction)loginButtonTouched:(id)sender {
    BOOL result = [self isPinValid:_passField.text.intValue];
    if (result) {
        [self performSegueWithIdentifier:@"success" sender:nil];
    } else {
        [self displayPINError];
    }
}

- (BOOL)isPinValid:(int)number {
    return number == 253;
}

- (void)displayPINError {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Alert"
                                                                   message:@"Incorrect PIN."
                                                            preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];

    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end


