//
//  ViewController.m
//  techtalkProj
//
//  Created by Bruno Rocha on 3/3/17.
//  Copyright © 2017 Bruno Rocha. All rights reserved.
//

#import "ViewController.h"
#import <StoreKit/StoreKit.h>

@interface ViewController  ()


@property (weak, nonatomic) IBOutlet UITextField *passField;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ViewController

- (IBAction)loginButtonTouched:(id)sender {
    NSString* text = _passField.text;
    BOOL result = [text isEqual: @"MyPass"];
    if (result) {
        _titleLabel.text = @"Success!";
    } else {
        _titleLabel.text = @"Error!";
    }
}


@end
