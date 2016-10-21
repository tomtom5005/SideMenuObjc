//
//  MainViewController.m
//  SideMenuObjC
//
//  Created by Thomas Thompson on 10/21/16.
//  Copyright © 2016 Thomas Thompson. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UIButton *pancakeButton;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)pancakeButtonTapped:(UIButton *)sender{
    if ( self.delegate){
        [self.delegate didTapPancakeButton:sender];
    }
}



@end
