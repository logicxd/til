//
//  TwoPlaneFlightTableViewCell.m
//  SkyScannerClone
//
//  Created by Aung Moe on 6/13/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "TwoPlaneFlightTableViewCell.h"
#import "Masonry.h"
#import "TTTAttributedLabel.h"

@interface TwoPlaneFlightTableViewCell()

@property (readonly) CGFloat x_floatImageIcon;
@property (readonly) CGSize sizeImageIcon;
@property (readonly) CGFloat travelTimeFontSize;


@end


@implementation TwoPlaneFlightTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
        self.first_ImageIcon = [[UIView alloc] init];
        self.first_ImageIcon.backgroundColor = [UIColor blueColor];
<<<<<<< HEAD
        [self addSubview:self.first_ImageIcon];
        
        self.first_TravelTime = [[UILabel alloc] init];
        [self.first_TravelTime setFont:[UIFont boldSystemFontOfSize:11.f]];
        [self addSubview:self.first_TravelTime];
        
        self.first_Destination = [[UILabel alloc] init];
        [self.first_Destination setFont:[UIFont systemFontOfSize:8.f]];
        [self addSubview:self.first_Destination];
        
        self.first_NumOfStops = [[UILabel alloc] init];
        [self.first_NumOfStops setFont:[UIFont systemFontOfSize:10.f]];
        [self addSubview:self.first_NumOfStops];
        
        self.first_TimeEstimate = [[UILabel alloc] init];
        [self.first_TimeEstimate setFont:[UIFont systemFontOfSize:10.f]];
        [self addSubview:self.first_TimeEstimate];
        
        

        self.first_ImageIcon = [[UIView alloc] init];
        self.first_ImageIcon.backgroundColor = [UIColor redColor];
        [self addSubview:self.first_ImageIcon];
        
        
        
        self.ratingHappyness = [[UILabel alloc] init];
        [self.ratingHappyness setFont:[UIFont systemFontOfSize:10.f]];
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
=======
        [self.contentView addSubview:self.first_ImageIcon];
>>>>>>> Alaric
    }
    
    
    return self;
}

+ (BOOL)requiresConstraintBasedLayout {
    return YES;
}



@end
