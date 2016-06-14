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

@end


@implementation TwoPlaneFlightTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
        self.first_ImageIcon = [[UIView alloc] init];
        self.first_ImageIcon.backgroundColor = [UIColor blueColor];
        [self.contentView addSubview:self.first_ImageIcon];
    }
    
    
    return self;
}

+ (BOOL)requiresConstraintBasedLayout {
    return YES;
}



@end
