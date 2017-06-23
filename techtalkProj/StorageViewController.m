//
//  StorageViewController.m
//  techtalkProj
//
//  Created by Bruno Rocha on 6/21/17.
//  Copyright © 2017 Bruno Rocha. All rights reserved.
//

#import "StorageViewController.h"
#import "SAMKeychain.h"

@interface StorageViewController ()

@end

@implementation StorageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)saveToDefaults {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:9001 forKey:@"SecurityProjDefaultsKey"];
    [defaults synchronize];
}

- (void)saveToKeychain {
    [SAMKeychain setPassword:@"aaa" forService:@"SecurityTestService" account:@"SecurityTestAccount"];
}

@end
