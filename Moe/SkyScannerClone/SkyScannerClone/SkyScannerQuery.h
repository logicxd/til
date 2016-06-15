//
//  SkyScannerQuery.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyScannerId;
@class SkyScannerDate;

@interface SkyScannerQuery : NSObject

@property (nonatomic, copy) NSString *country;
@property (nonatomic, copy) NSString *currency;
@property (nonatomic, copy) NSString *locale;
@property (nonatomic, strong) NSNumber *adults;
@property (nonatomic, strong) NSNumber *children;
@property (nonatomic, strong) NSNumber *infants;
@property (nonatomic, strong) SkyScannerId *originPlace;
@property (nonatomic, strong) SkyScannerId *destinationPlace;
@property (nonatomic, strong) SkyScannerDate *outBoundDate;
@property (nonatomic, strong) SkyScannerDate *inBoundDate;
@property (nonatomic, copy) NSString *locationSchema;
@property (nonatomic, copy) NSString *cabinClass;
@property (nonatomic, assign) BOOL groupPricing;

@end
