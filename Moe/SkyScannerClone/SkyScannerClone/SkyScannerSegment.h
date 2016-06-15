//
//  SkyScannerSegment.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyScannerId;
@class SkyScannerDate;
@class SkyScannerCarrier;

@interface SkyScannerSegment : NSObject

@property (nonatomic, strong) NSMutableArray<SkyScannerId *> *ids;
@property (nonatomic, strong) NSMutableArray<SkyScannerId *> *originStations;
@property (nonatomic, strong) NSMutableArray<SkyScannerDate *> *departureDateTimes;
@property (nonatomic, strong) NSMutableArray<SkyScannerDate *> *arrivalDateTimes;
@property (nonatomic, strong) NSMutableArray<SkyScannerCarrier *> *carriers;
@property (nonatomic, strong) NSMutableArray<SkyScannerCarrier *> *operatingCarriers;
@property (nonatomic, strong) NSMutableArray<NSNumber *> *durations;
@property (nonatomic, strong) NSMutableArray<NSNumber *> *flightNumbers;
@property (nonatomic, strong) NSMutableArray<NSString *> *journeyModes;
@property (nonatomic, strong) NSMutableArray<NSString *> *directionalities;


@end
