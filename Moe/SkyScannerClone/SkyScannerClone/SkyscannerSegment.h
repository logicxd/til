//
//  SkyscannerSegment.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/16/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyscannerPlace;
@class SkyscannerCarrier;

@interface SkyscannerSegment : NSObject

@property (nonatomic, copy) NSString *journeyMode;
@property (nonatomic, strong) NSNumber *duration;
@property (nonatomic, copy) NSString *directionality;
@property (nonatomic, strong) NSNumber *flightNumber;
@property (nonatomic, strong) SkyscannerPlace *originStation;
@property (nonatomic, strong) SkyscannerPlace *destinationStation;
@property (nonatomic, copy) NSString *timeDeparture;
@property (nonatomic, copy) NSString *timeArrival;
@property (nonatomic, strong) SkyscannerCarrier *carrier;
@property (nonatomic, strong) SkyscannerCarrier *operatingCarrier;

@end
