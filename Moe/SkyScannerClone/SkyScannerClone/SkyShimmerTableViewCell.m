//
//  TwoPlaneFlightTableViewCell.m
//  SkyScannerClone
//
//  Created by Aung Moe on 6/13/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "SkyShimmerTableViewCell.h"
#import "Masonry.h"

@interface SkyShimmerTableViewCell()

@property (strong, nonatomic) UIView *first_ImageIcon;
@property (strong, nonatomic) UIView *first_TravelTime;
@property (strong, nonatomic) UIView *first_Destination;
@property (strong, nonatomic) UIView *first_NumOfStops;
@property (strong, nonatomic) UIView *first_TimeEstimate;

@property (strong, nonatomic) UIView *second_ImageIcon;
@property (strong, nonatomic) UIView *second_TravelTime;
@property (strong, nonatomic) UIView *second_Destination;
@property (strong, nonatomic) UIView *second_NumOfStops;
@property (strong, nonatomic) UIView *second_TimeEstimate;

@property (strong, nonatomic) UIView *ratingHappyness;
@property (strong, nonatomic) UIView *ratingForCheapest;
@property (strong, nonatomic) UIView *cost;
@property (strong, nonatomic) UIView *flightProvider;

@end

@implementation SkyShimmerTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        
        self.shimmeringView = [[FBShimmeringView alloc] initWithFrame:self.contentView.bounds];
        self.shimmeringView.shimmering = YES;
        [self.contentView addSubview: self.shimmeringView];
        
    }
    
    return self;
}

+ (BOOL)requiresConstraintBasedLayout {
    return YES;
}

- (void)updateConstraints {
    
    [self.contentView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];

    [super updateConstraints];
}

@end
