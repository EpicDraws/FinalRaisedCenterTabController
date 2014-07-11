//
//  ViewController.m
//  FinalRaisedCenterTabControllerDemo
//
//  Created by Final on 14-7-11.
//  Copyright (c) 2014年 FinalProject. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(void)showModal;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.centerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.centerButton setImage:[UIImage imageNamed:@"photo"] forState:UIControlStateNormal];
    [self.centerButton addTarget:self action:@selector(showModal) forControlEvents:UIControlEventTouchUpInside];
}

-(void)showModal
{
     UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"ModalController"];
    [self presentViewController:controller animated:YES completion:nil];
}
@end
