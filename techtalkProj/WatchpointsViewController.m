//
//  WatchpointsViewController.m
//  techtalkProj
//
//  Created by Bruno Rocha on 6/1/17.
//  Copyright © 2017 Bruno Rocha. All rights reserved.
//

#import "WatchpointsViewController.h"

@interface WatchpointsViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *niceLabel;
@property int touchCount;

@end

@implementation WatchpointsViewController

- (void)viewDidLoad {
    _touchCount = -1;
    [self didTouchButton:nil];
}

- (void)viewDidAppear:(BOOL)animated {
    //Remove this later!
    _touchCount = -1;
    [super viewDidAppear:animated];
}

- (IBAction)didTouchButton:(id)sender {
    _touchCount += 1;
    _label.text = [NSString stringWithFormat:@"%d",_touchCount];
    [self animateCounter];
    if (_touchCount % 25 == 0) {
        [self animateNiceLabel];
    }
}

- (void)animateCounter {
    _label.transform = CGAffineTransformMakeScale(0.1, 0.1);
    [UIView animateWithDuration:0.2 animations:^{
        _label.transform = CGAffineTransformMakeScale(1.0, 1.0);
        _label.center = self.view.center;
    }];
}

- (void)animateNiceLabel {
    if (_touchCount == 1000000) {
        [_niceLabel setText:@"Amazing!"];
    } else {
        [_niceLabel setText:@"Nice!"];
    }
    _niceLabel.alpha = 1.0;
    [UIView animateWithDuration:1.0 animations:^{
        _niceLabel.alpha = 0;
    }];
}

@end
