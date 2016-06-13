//
//  SkyScannerTableViewCell.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/13/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwoPlaneFlightTableViewCell : UITableViewCell

@property (strong, nonatomic) UIView *first_ImageIcon;
@property (strong, nonatomic) UILabel *first_TravelTime;
@property (strong, nonatomic) UILabel *first_Destination;
@property (strong, nonatomic) UILabel *first_NumOfStops;
@property (strong, nonatomic) UILabel *first_timeEstimate;

@property (strong, nonatomic) UIView *second_ImageIcon;
@property (strong, nonatomic) UILabel *second_TravelTime;
@property (strong, nonatomic) UILabel *second_Destination;
@property (strong, nonatomic) UILabel *second_NumOfStops;
@property (strong, nonatomic) UILabel *second_timeEstimate;

@property (strong, nonatomic) UILabel *ratingOutOf10;
@property (strong, nonatomic) UILabel *ratingForCheapest;
@property (strong, nonatomic) UILabel *cost;
@property (strong, nonatomic) UILabel *flightProvider;
@end
