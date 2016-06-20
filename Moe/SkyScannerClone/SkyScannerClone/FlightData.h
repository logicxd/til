//
//  FlightData.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/14/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlightData : NSObject

@property (strong, readonly) NSArray *first_TravelTime;
@property (strong, readonly) NSArray *first_Destination;
@property (strong, readonly) NSArray *first_NumOfStops;
@property (strong, readonly) NSArray *first_TimeEstimate;

@property (strong, readonly) NSArray *second_TravelTime;
@property (strong, readonly) NSArray *second_Destination;
@property (strong, readonly) NSArray *second_NumOfStops;
@property (strong, readonly) NSArray *second_TimeEstimate;

@property (strong, readonly) NSArray *ratingHappyness;
@property (strong, readonly) NSArray *ratingForCheapest;
@property (strong, readonly) NSArray *cost;
@property (strong, readonly) NSArray *flightProvider;


@end