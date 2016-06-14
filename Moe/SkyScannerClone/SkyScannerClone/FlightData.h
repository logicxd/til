//
//  FlightData.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/14/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlightData : NSObject

@property (strong, readonly) NSString *first_TravelTime;
@property (strong, readonly) NSString *first_Destination;
@property (strong, readonly) NSString *first_NumOfStops;
@property (strong, readonly) NSString *first_TimeEstimate;

@property (strong, readonly) NSString *second_TravelTime;
@property (strong, readonly) NSString *second_Destination;
@property (strong, readonly) NSString *second_NumOfStops;
@property (strong, readonly) NSString *second_TimeEstimate;

@property (strong, readonly) NSNumber *ratingHappyness;
@property (strong, readonly) NSString *ratingForCheapest;
@property (strong, readonly) NSString *cost;
@property (strong, readonly) NSString *flightProvider;


@end
