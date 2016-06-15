//
//  SkyScannerTableViewController.m
//  SkyScannerClone
//
//  Created by Aung Moe on 6/13/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "SkyScannerTableViewController.h"
#import "TwoPlaneFlightTableViewCell.h"
#import "EmptyTableViewCell.h"
#import "FlightData.h"
#import "SkyShimmerTableViewCell.h"

@interface SkyScannerTableViewController ()

@property (strong, nonatomic) UITableView *view;
@property FlightData *data;

@end

@implementation SkyScannerTableViewController

- (void)loadView {
    self.view = [[UITableView alloc] init];
    
    [self.view registerClass:[TwoPlaneFlightTableViewCell class] forCellReuseIdentifier:@"TwoPlaneFlight"];
    [self.view registerClass:[EmptyTableViewCell class] forCellReuseIdentifier:@"EmptyCell"];
    [self.view registerClass:[SkyShimmerTableViewCell class] forCellReuseIdentifier:@"SkyShimmer"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _data = [[FlightData alloc] init];
    
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

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UILabel *headerLabel = [[UILabel alloc] init];
    headerLabel.backgroundColor = [UIColor colorWithWhite:.90f alpha:1];
    NSString *headerString = @"428 of 428 results shown sorted by Price";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:headerString];
    [attributedString addAttributes:@{
                                      NSFontAttributeName:[UIFont boldSystemFontOfSize:13]
                                      }
                              range:[headerString rangeOfString:@"Price"]];
    headerLabel.font = [UIFont systemFontOfSize:12.f];
    headerLabel.textColor = [UIColor grayColor];
    headerLabel.attributedText = attributedString;
    headerLabel.textAlignment = NSTextAlignmentCenter;
    return headerLabel;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row%2 == 1) {
        return 7;
    } else if (indexPath.row == 0 || indexPath.row == 2) {
        return 160;
    }
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row%2 == 1) {
        EmptyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EmptyCell" forIndexPath:indexPath];
        return cell;
    } else if (indexPath.row == 0 || indexPath.row == 2) {
        TwoPlaneFlightTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TwoPlaneFlight" forIndexPath:indexPath];
        
        NSMutableAttributedString *attributedStringFirstTravelTime = [[NSMutableAttributedString alloc] initWithString:_data.first_TravelTime[indexPath.row]];
        NSRange searchRange = NSMakeRange(0, [_data.first_TravelTime[indexPath.row] length]);
        BOOL keepGoing = YES;
        while (keepGoing) {
            NSRange accessWord = [_data.first_TravelTime[indexPath.row] rangeOfString:@"[AP]M" options:NSRegularExpressionSearch range:searchRange];
            int pos = accessWord.location + 1;
            if (accessWord.location != NSNotFound) {
                [attributedStringFirstTravelTime addAttributes:@{
                                                                 NSFontAttributeName:[UIFont systemFontOfSize:10.f]
                                                                 }
                                                         range:accessWord];
                
                searchRange = NSMakeRange(pos, [_data.first_TravelTime[indexPath.row] length] - pos);
            } else {
                keepGoing = NO;
            }
        }
        
        NSMutableAttributedString *attributedStringSecondTravelTime = [[NSMutableAttributedString alloc] initWithString:_data.second_TravelTime[indexPath.row]];
        searchRange = NSMakeRange(0, [_data.second_TravelTime[indexPath.row] length]);
        keepGoing = YES;
        while (keepGoing) {
            NSRange accessWord = [_data.second_TravelTime[indexPath.row] rangeOfString:@"[AP]M" options:NSRegularExpressionSearch range:searchRange];
            int pos = accessWord.location + 1;
            if (accessWord.location != NSNotFound) {
                [attributedStringSecondTravelTime addAttributes:@{
                                                                 NSFontAttributeName:[UIFont systemFontOfSize:10.f]
                                                                 }
                                                         range:accessWord];
                
                searchRange = NSMakeRange(pos, [_data.second_TravelTime[indexPath.row] length] - pos);
            } else {
                keepGoing = NO;
            }
        }
        
        cell.first_TravelTime.attributedText = attributedStringFirstTravelTime;
        cell.first_Destination.text = _data.first_Destination[indexPath.row];
        cell.first_NumOfStops.text = _data.first_NumOfStops[indexPath.row];
        cell.first_TimeEstimate.text = _data.first_TimeEstimate[indexPath.row];
        cell.second_TravelTime.attributedText = attributedStringSecondTravelTime;
        cell.second_Destination.text = _data.second_Destination[indexPath.row];
        cell.second_NumOfStops.text = _data.second_NumOfStops[indexPath.row];
        cell.second_TimeEstimate.text = _data.second_TimeEstimate[indexPath.row];
        cell.ratingHappyness.text = _data.ratingHappyness[indexPath.row];
        cell.ratingForCheapest.text = _data.ratingForCheapest[indexPath.row];
        cell.cost.text = [NSString stringWithFormat:@"$%@", _data.cost[indexPath.row]];
        cell.flightProvider.text = _data.flightProvider[indexPath.row];
    }
    
    SkyShimmerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SkyShimmer" forIndexPath:indexPath];
    
    
    return cell;
}

@end
