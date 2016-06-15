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
    _first_TravelTime = @[@"8:15 AM - 10:55 AM", @"" ,@"7:42 AM - 10:24 AM"];
    _first_Destination = @[@"SFO-HNL, Virgin America",@"", @"SFO-HNL, United"];
    _first_NumOfStops = @[@"Non-stop", @"", @"Non-stop"];
    _first_TimeEstimate = @[@"5h 40m", @"", @"5h 42m"];
    
    _second_TravelTime = @[@"11:20 AM - 10:25 PM", @"", @"9:30 AM - 2:51 PM"];
    _second_Destination = @[@"HNL-SFO, Hawaiian Airlines", @"", @"HNL-SFO, United"];
    _second_NumOfStops = @[@"1 stop", @"", @"Non-stop"];
    _second_TimeEstimate = @[@"8h 5m", @"", @"5h 21m"];
    
    _ratingHappyness = @[@"\u263A  8.5", @"", @"\u263A  9.3"];
    _ratingForCheapest = @[@"Cheapest", @"", @"Second Cheapest"];
    _cost = @[@583, @0, @613];
    _flightProvider = @[@"via Travel2Be", @"", @"via AungMoe:D"];
    
    return [super init];
}

@end
