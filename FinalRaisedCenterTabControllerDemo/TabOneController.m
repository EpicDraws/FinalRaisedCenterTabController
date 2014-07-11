//
//  TabOneController.m
//  FinalRaisedCenterTabControllerDemo
//
//  Created by Final on 14-7-11.
//  Copyright (c) 2014年 FinalProject. All rights reserved.
//

#import "TabOneController.h"

@interface TabOneController ()

@end

@implementation TabOneController
- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //not ok
    //[segue.destinationViewController setHidesBottomBarWhenPushed:YES];
}
@end
