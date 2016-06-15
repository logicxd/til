//
//  SkyScannerPricingOption.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyScannerAgent;

@interface SkyScannerPricingOption : NSObject

@property (nonatomic, strong) NSMutableArray<SkyScannerAgent *> *agents;
@property (nonatomic, strong) NSMutableArray<NSNumber *> *quoteAgeInMinutes;
@property (nonatomic, strong) NSMutableArray<NSNumber *> *prices;
@property (nonatomic, strong) NSMutableArray<NSString *> *deeplinkUrls;

@end
