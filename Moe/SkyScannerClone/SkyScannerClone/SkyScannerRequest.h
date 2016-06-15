//
//  JSONData.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyScannerQuery;
@class SkyScannerAgent;
@class SkyScannerItinerary;
@class SkyScannerLeg;

@interface SkyScannerSegment :NSObject

@end

@interface SkyScannerCarrier : NSObject

@end

@interface SkyScannerAgent : NSObject

@end

@interface SkyScannerPlace : NSObject

@end

@interface SkyScannerCurrency : NSObject

@end

@interface SkyScannerRequest : NSObject <NSCopying>

@property (nonatomic, copy) NSString *sessionKey;
@property (nonatomic, strong) SkyScannerQuery *query;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, strong) SkyScannerItinerary *itinerary;
@property (nonatomic, strong) SkyScannerLeg *leg;
@property (nonatomic, strong) SkyScannerSegment *segment;
@property (nonatomic, strong) SkyScannerCarrier *carrier;
@property (nonatomic, strong) SkyScannerAgent *agent;
@property (nonatomic, strong) SkyScannerPlace *place;
@property (nonatomic, strong) SkyScannerCurrency *currency;

@end
