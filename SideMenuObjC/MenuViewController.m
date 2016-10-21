//
//  MenuViewController.m
//  SideMenuObjC
//
//  Created by Thomas Thompson on 10/21/16.
//  Copyright © 2016 Thomas Thompson. All rights reserved.
//

#import "MenuViewController.h"
#import "MainViewController.h"

static CGFloat menuWidth = 300.0;

@interface MenuViewController () <UITableViewDelegate, UITableViewDataSource, MainViewControllerDelegateProtocol >

@property IBOutlet UITableView *menuTableView;
@property IBOutlet NSLayoutConstraint *leadingConstraint;
@property (strong, nonatomic) MainViewController *mainVC;
@property (strong, nonatomic) NSArray *menuItems;


@end

@implementation MenuViewController

- (NSArray *) menuItems {
    return @[@"Campaigns", @"Contacts"];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.menuTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

#pragma mark - DashboardViewControllerDelegateProtocol method

- (void) didTapPancakeButton:(UIButton *)sender {
    self.leadingConstraint.constant = menuWidth;
    [UIView animateWithDuration:0.5 animations:^{
        [self.view layoutIfNeeded];
    }];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString: @"EmbedSegue_MenuVC_MainVC"]){
        self.mainVC = (MainViewController *)segue.destinationViewController;
        self.mainVC.delegate = self;
    }
}

#pragma mark - UITableView Data Source Methods
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.menuItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.menuTableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.contentView.backgroundColor = [UIColor clearColor];
    cell.textLabel.text = self.menuItems[indexPath.row];
    return cell;
}

#pragma mark - UITableView Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.leadingConstraint.constant = 0.0;
    [UIView animateWithDuration:0.4 animations:^{
        [self.view layoutIfNeeded];
    }];
}

@end
