//
//  MainViewController.h
//  SideMenuObjC
//
//  Created by Thomas Thompson on 10/21/16.
//  Copyright © 2016 Thomas Thompson. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MainViewControllerDelegateProtocol

- (void) didTapPancakeButton:(UIButton *)sender;

@end

@interface MainViewController : UIViewController

@property (weak, nonatomic) id<MainViewControllerDelegateProtocol> delegate ;

@end
