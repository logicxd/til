//
//  TwoPlaneFlightTableViewCell.m
//  SkyScannerClone
//
//  Created by Aung Moe on 6/13/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "TwoPlaneFlightTableViewCell.h"
#import "Masonry.h"
<<<<<<< HEAD
#import "TTTattributedLabel.h"
#import "FBShimmeringView.h"

=======
#import "TTTAttributedLabel.h"
>>>>>>> origin/master

@interface TwoPlaneFlightTableViewCell()

@property (readonly) CGFloat x_floatImageIcon;
@property (readonly) CGSize sizeImageIcon;
@property (readonly) CGFloat travelTimeFontSize;


@end


@implementation TwoPlaneFlightTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
<<<<<<< HEAD
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
=======
        self.first_ImageIcon = [[UIView alloc] init];
        self.first_ImageIcon.backgroundColor = [UIColor blueColor];
<<<<<<< HEAD
        [self addSubview:self.first_ImageIcon];
        
        self.first_TravelTime = [[UILabel alloc] init];
        [self.first_TravelTime setFont:[UIFont boldSystemFontOfSize:11.f]];
        [self addSubview:self.first_TravelTime];
>>>>>>> origin/master
        
        
        self.firstImageIcon = [[UIView alloc] init];
        self.firstImageIcon.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:self.firstImageIcon];
        
        self.firstTravelTime = [[UILabel alloc] init];
        [self.firstTravelTime setFont:[UIFont boldSystemFontOfSize:16.f]];
        [self.contentView addSubview:self.firstTravelTime];
        
        self.firstDestination = [[UILabel alloc] init];
        [self.firstDestination setFont:[UIFont systemFontOfSize:14.f]];
        [self.firstDestination setTextColor:[UIColor grayColor]];
        [_firstDestination setNumberOfLines:1];
        
        [self.firstDestination setAdjustsFontSizeToFitWidth:YES];
        [self.firstDestination setMinimumScaleFactor:.5f];
        [self.contentView addSubview:self.firstDestination];
        
        self.firstNumOfStops = [[UILabel alloc] init];
        [self.firstNumOfStops setFont:[UIFont systemFontOfSize:16.f]];
        [self.contentView addSubview:self.firstNumOfStops];
        
        self.firstTimeEstimate = [[UILabel alloc] init];
        [self.firstTimeEstimate setFont:[UIFont systemFontOfSize:14.f]];
        [self.firstTimeEstimate setTextColor:[UIColor grayColor]];
        [self.contentView addSubview:self.firstTimeEstimate];
        
        self.ratingHappyness = [[UILabel alloc] init];
        [self.ratingHappyness setFont:[UIFont systemFontOfSize:10.f]];
        [self.contentView addSubview:self.ratingHappyness];
        
        self.ratingForCheapest = [[UILabel alloc] init];
        [self.ratingForCheapest setFont:[UIFont boldSystemFontOfSize:10.f]];
        [self.ratingForCheapest setTextColor:[UIColor greenColor]];
        [self.contentView addSubview:self.ratingForCheapest];
        
        self.cost = [[UILabel alloc] init];
        [self.cost setFont:[UIFont boldSystemFontOfSize:16.f]];
        [self.contentView addSubview:self.cost];
        
        self.flightProvider = [[UILabel alloc] init];
        [self.flightProvider setFont:[UIFont systemFontOfSize:10.f]];
<<<<<<< HEAD
        [self.flightProvider setTextColor:[UIColor grayColor]];
        [self.contentView addSubview:self.flightProvider];
        
// 2nd Option //
        
        self.secondImageIcon = [[UIView alloc] init];
        self.secondImageIcon.backgroundColor = [UIColor blueColor];
        [self.contentView addSubview:self.secondImageIcon];
        
        self.secondTravelTime = [[UILabel alloc] init];
        [self.secondTravelTime setFont:[UIFont boldSystemFontOfSize:16.f]];
        [self.contentView addSubview:self.secondTravelTime];

        self.secondDestination = [[UILabel alloc] init];
        [self.secondDestination setFont:[UIFont systemFontOfSize:14.f]];
        [self.secondDestination setTextColor:[UIColor grayColor]];
        [_secondDestination setNumberOfLines:1];
        [self.secondDestination setAdjustsFontSizeToFitWidth:YES];
        [self.secondDestination setMinimumScaleFactor:.5f];
        [self.contentView addSubview:self.secondDestination];
        
        self.secondNumOfStops = [[UILabel alloc] init];
        [self.secondNumOfStops setFont:[UIFont systemFontOfSize:16.f]];
        [self.secondNumOfStops setTextColor:[UIColor redColor]];
        [self.contentView addSubview:self.secondNumOfStops];
        
        self.secondTimeEstimate = [[UILabel alloc] init];
        [self.secondTimeEstimate setFont:[UIFont systemFontOfSize:14.f]];
        [self.secondTimeEstimate setTextColor:[UIColor grayColor]];
        [self.contentView addSubview:self.secondTimeEstimate];
        
=======
        [self addSubview:self.flightProvider];
=======
        [self.contentView addSubview:self.first_ImageIcon];
>>>>>>> Alaric
>>>>>>> origin/master
    }
    
    
    return self;
}

+ (BOOL)requiresConstraintBasedLayout {
    return YES;
}

- (void)updateConstraints {

    [self.contentView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self).insets(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
    [self.firstImageIcon mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(10);
        make.left.equalTo(self.contentView);
        make.width.height.equalTo(@30);
    }];
    [self.firstTravelTime mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.firstImageIcon);
        make.left.equalTo(self.firstImageIcon.mas_right).offset(10);
        make.right.lessThanOrEqualTo(self.firstNumOfStops.mas_left).offset(-10);
    }];
    [self.firstDestination mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.firstTravelTime.mas_bottom);
        make.left.equalTo(self.firstTravelTime);
        make.right.lessThanOrEqualTo(self.firstTimeEstimate.mas_left).offset(-10);
    }];
    [self.firstNumOfStops mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.firstTravelTime);
        make.right.equalTo(self.contentView);
    }];
    [self.firstTimeEstimate mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.firstDestination);
        make.right.equalTo(self.firstNumOfStops);
    }];
    [self.ratingHappyness mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.firstImageIcon);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.ratingForCheapest mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ratingHappyness.mas_bottom).offset(5);
        make.left.equalTo(self.firstImageIcon);
    }];
    [self.cost mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.baseline.equalTo(self.ratingHappyness);
        make.right.equalTo(self.firstNumOfStops.mas_right);
    }];
    [self.flightProvider mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.baseline.equalTo(self.ratingForCheapest);
        make.right.equalTo(self.cost);
    }];
    
// 2nd Option Constraints //
    [self.secondImageIcon mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.firstImageIcon.mas_bottom).offset(30);
        make.left.equalTo(self.contentView);
        make.width.height.equalTo(@30);
    }];
    [self.secondTravelTime mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.secondImageIcon);
        make.left.equalTo(self.secondImageIcon.mas_right).offset(10);
        make.right.lessThanOrEqualTo(self.secondNumOfStops.mas_left).offset(-10);
    }];
    [self.secondDestination mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.secondTravelTime.mas_bottom);
        make.left.equalTo(self.secondTravelTime);
        make.right.lessThanOrEqualTo(self.secondTimeEstimate.mas_left).offset(-10);
    }];
    [self.secondNumOfStops mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.secondTravelTime);
        make.right.equalTo(self.contentView);
    }];
    [self.secondTimeEstimate mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.secondDestination);
        make.right.equalTo(self.secondNumOfStops);
    }];
    
    
    
    [super updateConstraints];
}


@end
