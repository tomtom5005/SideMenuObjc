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
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pancakeButtonTapped:(UIButton *)sender{
    if ( self.delegate){
        [self.delegate didTapPancakeButton:sender];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end