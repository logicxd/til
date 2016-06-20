//
//  SkyScannerShimmerTableViewCell.m
//  SkyScannerClone
//
//  Created by Alaric Gonzales on 6/14/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "SkyScannerShimmerTableViewCell.h"
#import "FBShimmeringView.h"
#import "Masonry.h"


@interface SkyScannerShimmerTableViewCell()

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

@implementation SkyScannerShimmerTableViewCell

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
