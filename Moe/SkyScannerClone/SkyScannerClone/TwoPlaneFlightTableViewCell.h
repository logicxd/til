//
//  SkyScannerTableViewCell.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/13/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBShimmeringView.h"


@interface TwoPlaneFlightTableViewCell : UITableViewCell

@property (strong, nonatomic) UIView  *firstImageIcon;
@property (strong, nonatomic) UILabel *firstTravelTime;
@property (strong, nonatomic) UILabel *firstDestination;
@property (strong, nonatomic) UILabel *firstNumOfStops;
@property (strong, nonatomic) UILabel *firstTimeEstimate;

@property (strong, nonatomic) UIView  *secondImageIcon;
@property (strong, nonatomic) UILabel *secondTravelTime;
@property (strong, nonatomic) UILabel *secondDestination;
@property (strong, nonatomic) UILabel *secondNumOfStops;
@property (strong, nonatomic) UILabel *secondTimeEstimate;

@property (strong, nonatomic) UILabel *ratingHappyness;
@property (strong, nonatomic) UILabel *ratingForCheapest;
@property (strong, nonatomic) UILabel *cost;
@property (strong, nonatomic) UILabel *flightProvider;


@end
