//
//  SkyScannerItinerary.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyScannerId;
@class SkyScannerPricingOption;
@class SkyScannerBookingDetailsLink;

@interface SkyScannerItinerary : NSObject

@property (nonatomic, strong) NSMutableArray<SkyScannerId *> *outboundLegIds;
@property (nonatomic, strong) NSMutableArray<SkyScannerId *> *inboundLegIds;
@property (nonatomic, strong) NSMutableArray<SkyScannerPricingOption *> *pricingOptions;
@property (nonatomic, strong) NSMutableArray<SkyScannerBookingDetailsLink *> *bookingDetailsLinks;

@end
