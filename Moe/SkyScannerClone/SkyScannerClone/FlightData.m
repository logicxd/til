//
//  FlightData.m
//  SkyScannerClone
//
//  Created by Aung Moe on 6/14/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "FlightData.h"

@implementation FlightData

- (id)init {
    _first_TravelTime = @"8:15 AM - 10:55 AM";
    _first_Destination = @"SFO-HNL, Virgin America";
    _first_NumOfStops = @"Non-stop";
    _first_TimeEstimate = @"5h 40m";
    
    _second_TravelTime = @"11:20 AM - 10:25 PM";
    _second_Destination = @"HNL-SFO, Hawaiian Airlines";
    _second_NumOfStops = @"1 stop";
    _second_TimeEstimate = @"8h 5m";
    
    _ratingHappyness = @8.5;
    _ratingForCheapest = @"Cheapest";
    _cost = @"$583";
    _flightProvider = @"via Travel2Be";
    
    return [super init];
}

@end
