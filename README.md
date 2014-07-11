FinalRaisedCenterTabController
==============================

Raised Center Tabbar Controller

#### How to use?
Subclass FinalRaisedCenterTabController and add code below in `viewDidLoad` method

    self.centerButton = [UIButton buttonWithType:UIButtonTypeCustom];
  	[self.centerButton setImage:[UIImage imageNamed:@"YourImageName"] forState:UIControlStateNormal];
    //add target for the center button
    [self.centerButton addTarget:self action:@selector(YourSelector) forControlEvents:UIControlEventTouchUpInside];
    
You also need to disable the middle TabbarItem

#### !Something not perfect!
Sorry to tell you that the controller is not perfect.When set **hideBottomBarWhenPushed** to YES,the `centerButton` will dismiss after a delay,I don't know how to fix this.

If you have an answer,please mail to loveforgeter@gmail.com or [send me a pull request](https://github.com/loveforgeter/FinalRaisedCenterTabController/pull/new/master).Thanks for your contributions.

Demo
----
![Demo](https://raw.githubusercontent.com/loveforgeter/DemoGifs/master/FinalRaisedCenterTabController.gif)
