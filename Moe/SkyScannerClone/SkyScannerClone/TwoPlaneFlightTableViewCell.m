//
//  TwoPlaneFlightTableViewCell.m
//  SkyScannerClone
//
//  Created by Aung Moe on 6/13/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "TwoPlaneFlightTableViewCell.h"
#import "Masonry.h"

@interface TwoPlaneFlightTableViewCell()

@property (readonly) CGFloat fontSizeTravelTime;
@property (readonly) CGFloat fontSizeDestination;
@property (readonly) CGFloat fontSizeNumOfStops;
@property (readonly) CGFloat fontSizeTimeEstimate;

@end

@implementation TwoPlaneFlightTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _fontSizeTravelTime = 14.f;
        _fontSizeDestination = 8.f;
        _fontSizeNumOfStops = 13.f;
        _fontSizeTimeEstimate = _fontSizeDestination;
        
        
        
        self.first_ImageIcon = [[UIView alloc] init];
        self.first_ImageIcon.backgroundColor = [UIColor purpleColor];
        [self addSubview:self.first_ImageIcon];
        
        self.first_TravelTime = [[UILabel alloc] init];
        [self.first_TravelTime setFont:[UIFont boldSystemFontOfSize:_fontSizeTravelTime]];
        [self addSubview:self.first_TravelTime];
        
        self.first_Destination = [[UILabel alloc] init];
        [self.first_Destination setFont:[UIFont systemFontOfSize:_fontSizeDestination]];
        [self addSubview:self.first_Destination];
        
        self.first_NumOfStops = [[UILabel alloc] init];
        [self.first_NumOfStops setFont:[UIFont systemFontOfSize:_fontSizeNumOfStops]];
        [self addSubview:self.first_NumOfStops];
        
        self.first_TimeEstimate = [[UILabel alloc] init];
        [self.first_TimeEstimate setFont:[UIFont systemFontOfSize:_fontSizeTimeEstimate]];
        [self addSubview:self.first_TimeEstimate];
        
        
        
        self.second_ImageIcon = [[UIView alloc] init];
        self.second_ImageIcon.backgroundColor = [UIColor redColor];
        [self addSubview:self.second_ImageIcon];
        
        self.second_TravelTime = [[UILabel alloc] init];
        [self.second_TravelTime setFont:[UIFont boldSystemFontOfSize:_fontSizeTravelTime]];
        [self addSubview:self.second_TravelTime];
        
        self.second_Destination = [[UILabel alloc] init];
        [self.second_Destination setFont:[UIFont systemFontOfSize:_fontSizeDestination]];
        [self addSubview:self.second_Destination];
        
        self.second_NumOfStops = [[UILabel alloc] init];
        [self.second_NumOfStops setFont:[UIFont systemFontOfSize:_fontSizeNumOfStops]];
        [self addSubview:self.second_NumOfStops];
        
        self.second_TimeEstimate = [[UILabel alloc] init];
        [self.second_TimeEstimate setFont:[UIFont systemFontOfSize:_fontSizeTimeEstimate]];
        [self addSubview:self.second_TimeEstimate];
        
        
        
        self.ratingHappyness = [[UILabel alloc] init];
        [self.ratingHappyness setFont:[UIFont systemFontOfSize:10.f]];
        [self setContentHuggingPriority:UILayoutPriorityFittingSizeLevel forAxis:UILayoutConstraintAxisVertical];
        [self addSubview:self.ratingHappyness];
        
        self.ratingForCheapest = [[UILabel alloc] init];
        [self.ratingForCheapest setFont:[UIFont systemFontOfSize:10.f]];
        [self addSubview:self.ratingForCheapest];
        
        self.cost = [[UILabel alloc] init];
        [self.cost setFont:[UIFont systemFontOfSize:10.f]];
        [self addSubview:self.cost];
        
        self.flightProvider = [[UILabel alloc] init];
        [self.flightProvider setFont:[UIFont systemFontOfSize:10.f]];
        [self addSubview:self.flightProvider];
    }
    
    return self;
}

+ (BOOL)requiresConstraintBasedLayout {
    return YES;
}

- (void)updateConstraints {
    CGFloat x_offsetImageIcon = 15.f;
    CGFloat lengthOfImageIcon = 19.f;
    CGSize sizeOfTravelTime = CGSizeMake(100.f, 30.f);
    
    [self.first_ImageIcon mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@(lengthOfImageIcon));
        make.left.equalTo(self).offset(x_offsetImageIcon);
        make.top.equalTo(self).offset(23);
    }];
    
    [self.first_TravelTime mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(sizeOfTravelTime.width));
        make.height.equalTo(@(sizeOfTravelTime.height));
        make.top.equalTo(self).offset(10);
    }];
    
    [self.first_Destination mas_remakeConstraints:^(MASConstraintMaker *make) {
        
    }];
    
    [self.second_ImageIcon mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@(lengthOfImageIcon));
        make.left.equalTo(self).offset(x_offsetImageIcon);
        make.top.equalTo(self).offset(80);
    }];
    
    [super updateConstraints];
}

@end
