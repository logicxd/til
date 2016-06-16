//
//  SkyscannerQuery.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/16/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyscannerCurrency;
@class SkyscannerPlace;

@interface SkyscannerQuery : NSObject

@property (nonatomic, strong) NSNumber *amountAdults;
@property (nonatomic, strong) NSNumber *amountChildren;
@property (nonatomic, strong) NSNumber *amountInfants;
@property (nonatomic, copy) NSString *locationSchema;
@property (nonatomic, copy) NSString *locale;
@property (nonatomic, copy) NSString *cabinClass;
@property (nonatomic, copy) NSString *country;
@property (nonatomic) BOOL groupPricing;
@property (nonatomic, copy) SkyscannerCurrency *currencyCode;
@property (nonatomic, copy) SkyscannerPlace *originPlace;
@property (nonatomic, copy) SkyscannerPlace *destinationPlace;
@property (nonatomic, copy) NSString *inboundDate;
@property (nonatomic, copy) NSString *outboundDate;

@end
