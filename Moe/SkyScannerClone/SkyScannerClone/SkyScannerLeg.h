//
//  SkyScannerLeg.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyScannerId;
@class SkyScannerDate;

@interface SkyScannerLeg : NSObject

@property (strong, nonatomic) NSMutableArray<SkyScannerId *> *placeIds;
@property (strong, nonatomic) NSMutableArray<SkyScannerId *> *segmentIds;
@property (strong, nonatomic) NSMutableArray<SkyScannerId *> *originStations;
@property (strong, nonatomic) NSMutableArray<SkyScannerId *> *destinationStations;
@property (strong, nonatomic) NSMutableArray<SkyScannerDate *> *departures;
@property (strong, nonatomic) NSMutableArray<SkyScannerDate *> *arrivals;
@property (strong, nonatomic) NSMutableArray<NSNumber *> *durations;
@property (strong, nonatomic) NSMutableArray<NSString *> *journeyModes;
@property (strong, nonatomic) NSMutableArray<NSNumber *> *stops;
@property (strong, nonatomic) NSMutableArray<NSNumber *> *carriers;
@property (strong, nonatomic) NSMutableArray<NSNumber *> *operatingCarriers;
@property (strong, nonatomic) NSMutableArray<NSString *> *directionalities;
@property (strong, nonatomic) NSMutableArray<NSNumber *> *flightNumbers;

@end