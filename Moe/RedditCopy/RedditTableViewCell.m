//
//  RedditTableViewcellTableViewCell.m
//  RedditCopy
//
//  Created by Aung Moe on 6/9/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "RedditTableViewCell.h"
#import "Masonry.h"
#import "TTTAttributedLabel.h"

@implementation RedditTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
        // Instantiate subviews
        self.backgroundColor = [UIColor blackColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        _bodyText = [[TTTAttributedLabel alloc] initWithFrame:CGRectZero];
        [_bodyText setFont:[UIFont systemFontOfSize:13.f]];
        [_bodyText setTextColor:[UIColor whiteColor]];
        [_bodyText setNumberOfLines:0];
        [self addSubview:_bodyText];
        
        /*
        _upvoteTag = [[UILabel alloc] initWithFrame:CGRectZero];
        [_upvoteTag setFont:[UIFont systemFontOfSize:10.f]];
        [_upvoteTag setTextColor:[UIColor redColor]];
        [self addSubview:_upvoteTag];
        */
    }
    
    return self;
}

+ (BOOL)requiresConstraintBasedLayout {
    return YES;
}

- (void)updateConstraints {
    // Set constraints over here
    
    /*
    [self.contentView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self);
        
        [self mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@100);
            
        }];
       
    }];
     */
    
    [_bodyText mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.left.equalTo(self);
        make.right.equalTo(self).offset(-40);
    }];
    
  
    
    /*
    [self mas_remakeConstraints:^(MASConstraintMaker *make) {
        //make.height.equalTo(@100);
        
    }];
    
    [_upvoteTag mas_remakeConstraints:^(MASConstraintMaker *make) {
        
        make.width.height.equalTo(@30);
    }];
    */
    [super updateConstraints];
}
@end
