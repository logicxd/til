//
//  RedditTableViewcellTableViewCell.h
//  RedditCopy
//
//  Created by Aung Moe on 6/9/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TTTAttributedLabel;

@interface RedditTableViewCell : UITableViewCell
@property (nonatomic, strong, readonly) TTTAttributedLabel *bodyText;
@property (nonatomic, strong, readonly) UILabel *blogTag;
@property (nonatomic, strong, readonly) UILabel *authorTag;
@property (nonatomic, strong, readonly) UILabel *upvoteTag;
@property (nonatomic, strong, readonly) UILabel *commentTag;
@end
