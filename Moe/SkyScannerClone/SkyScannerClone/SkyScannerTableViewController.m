//
//  SkyScannerTableViewController.m
//  SkyScannerClone
//
//  Created by Aung Moe on 6/13/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "SkyScannerTableViewController.h"
#import "TwoPlaneFlightTableViewCell.h"

@interface SkyScannerTableViewController ()

@property (strong, nonatomic) UITableView *view;

@end

@implementation SkyScannerTableViewController

- (void) loadView {
    self.view = [[UITableView alloc] init];
    
    [self.view registerClass:[TwoPlaneFlightTableViewCell class] forCellReuseIdentifier:@"TwoPlaneFlight"];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.delegate = self;
    self.view.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TwoPlaneFlight" forIndexPath:indexPath];
    
    cell.textLabel.text = @"efeaf";
    
    return cell;
}



@end
