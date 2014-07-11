//
//  ModalViewController.m
//  FinalRaisedCenterTabControllerDemo
//
//  Created by Final on 14-7-11.
//  Copyright (c) 2014年 FinalProject. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()
-(IBAction)dissmiss:(id)sender;
@end

@implementation ModalViewController
-(void)dissmiss:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
