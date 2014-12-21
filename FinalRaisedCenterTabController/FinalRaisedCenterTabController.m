//
//  FinalRaisedCenterTabController.m
//  FinalRaisedCenterTabControllerDemo
//
//  Created by Final on 14-7-11.
//  Copyright (c) 2014年 FinalProject. All rights reserved.
//

#import "FinalRaisedCenterTabController.h"

@interface FinalRaisedCenterTabController ()

@end

@implementation FinalRaisedCenterTabController
-(void)viewDidLoad
{
    [self.tabBar addObserver:self forKeyPath:@"hidden" options:NSKeyValueObservingOptionNew context:nil];
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    if (self.centerButton) {
        if (self.centerButton.superview == nil) {
            [self.view addSubview:self.centerButton];
        }
        
        UIImage *image = [self.centerButton imageForState:UIControlStateNormal];
        
        self.centerButton.frame = CGRectMake(0.0, 0.0, 70, 70);
        
//        CGFloat heightDifference = image.size.height - self.tabBar.frame.size.height;
//        
         CGPoint center = self.tabBar.center;
//        if (heightDifference > 0) {
            center.y = self.view.bounds.size.height - (self.centerButton.frame.size.height / 2) - 10;
            center.x = self.view.bounds.size.width - (self.centerButton.frame.size.width / 2) - 10;
//        }
        self.centerButton.center = center;
        [self.view bringSubviewToFront:self.centerButton];
    }
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"hidden"]) {
        self.centerButton.hidden = [change[@"new"] boolValue];
    }
}

-(void)dealloc
{
    //remove hidden observer
    [self.tabBar removeObserver:self forKeyPath:@"hidden"];
}
@end
