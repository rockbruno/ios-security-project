//
//  ViewController.m
//  techtalkProj
//
//  Created by Bruno Rocha on 3/3/17.
//  Copyright © 2017 Bruno Rocha. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController  ()

@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *passField;

@end

@implementation LoginViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (IBAction)loginButtonTouched:(id)sender {
    BOOL result = [self validateAccessCode:_passField.text];
    if (result) {
        [self performSegueWithIdentifier:@"success" sender:nil];
    } else {
        [self displayLoginError];
    }
}

- (BOOL)validateAccessCode:(NSString*) text {
    //Oh no! The login API is broken.
    return NO;
}

- (void)displayLoginError {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Alert"
                                                                   message:@"Incorrect code."
                                                            preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
