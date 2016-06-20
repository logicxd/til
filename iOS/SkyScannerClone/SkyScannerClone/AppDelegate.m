//
//  AppDelegate.m
//  SkyScannerClone
//
//  Created by Aung Moe on 6/13/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "AppDelegate.h"
#import "SkyScannerTableViewController.h"
#import "RPJSONMapper.h"
#import "SkyscannerRequest.h"
#import "SkyscannerQuery.h"
#import "SkyscannerCurrency.h"
#import "SkyscannerPlace.h"
#import "SkyscannerItinerary.h"
#import "SkyscannerLeg.h"
#import "SkyscannerSegment.h"
#import "SkyscannerAgent.h"
#import "SkyscannerCarrier.h"
#import "SkyscannerPricingOption.h"
#import "SkyscannerBookingDetailsLink.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:screenRect];
    self.viewController = [[SkyScannerTableViewController alloc] initWithStyle:UITableViewStylePlain];
    [self.window setRootViewController:self.viewController];
    [self.window makeKeyAndVisible];
    
    [self parseJson];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)parseJson {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SkyscannerJSON" ofType:@"txt"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    SkyscannerRequest *request = [[SkyscannerRequest alloc] init];
    [[RPJSONMapper sharedInstance] mapJSONValuesFrom:json toInstance:request
        usingMapping:@{
                       @"SessionKey" : @"sessionKey",
                       @"Status" : @"status",
                       }];
    
    SkyscannerQuery *query = [[SkyscannerQuery alloc] init];
    [[RPJSONMapper sharedInstance] mapJSONValuesFrom:json[@"Query"] toInstance:query
        usingMapping:@{
                       @"Country" : @"country",
                       @"Locale" : @"locale",
                       @"Adults" : @"amountAdults",
                       @"Children" : @"amountChildren",
                       @"Infants" : @"amountInfants",
                       @"OutboundDate" : @"outboundDate",
                       @"InboundDate" : @"inboundDate",
                       @"LocationSchema" : @"locationSchema",
                       @"CabinClass" : @"cabinClass",
                       @"Currency" : @"currencyCode"
                       }];
    query.groupPricing = [[json[@"Query"] objectForKey:@"GroupPricing"] boolValue];
    
    SkyscannerPlace *queryOriginPlace = [[SkyscannerPlace alloc] init];
    queryOriginPlace.id = [json[@"Query"] objectForKey:@"OriginPlace"];
    query.originPlace = queryOriginPlace;
    
    SkyscannerPlace *queryDestinationPlace = [[SkyscannerPlace alloc] init];
    queryDestinationPlace.id = [json[@"Query"] objectForKey:@"DestinationPlace"];
    query.destinationPlace = queryDestinationPlace;
    
    request.query = query;
    
    NSMutableArray<SkyscannerItinerary *> *mutableArrayOfItineraries = [[NSMutableArray alloc] init];
    for (NSDictionary *eachDictionary in json[@"Itineraries"]) {
        SkyscannerItinerary *eachItinerary = [[SkyscannerItinerary alloc] init];
        [[RPJSONMapper sharedInstance] mapJSONValuesFrom:eachDictionary toInstance:eachItinerary
            usingMapping:@{
                           
                           }];
        [mutableArrayOfItineraries addObject:eachItinerary];
    }
    
    
    NSMutableArray<SkyscannerLeg *> *mutableArrayOfLegs = [[NSMutableArray alloc] init];
    for (NSDictionary *eachDictionary in json[@"Legs"]) {
        SkyscannerLeg *eachLeg = [[SkyscannerLeg alloc] init];
        [[RPJSONMapper sharedInstance] mapJSONValuesFrom:eachDictionary toInstance:eachLeg
            usingMapping:@{
                           @"Departure" : @"timeDeparture",
                           @"Arrival" : @"timeArrival",
                           @"Duration" : @"duration",
                           @"JourneyMode" : @"journeyMode",
                           @"Directionality" : @"directionality"
                           }];
        [mutableArrayOfLegs addObject:eachLeg];
    }
    /*
        Need to implement legID, segmentID, originStation, destinationStation, stops, carrierID, operatingCarrier, flightNumber.
     
        request.legs = mutableArrayOfLegs;
    */
    
    NSMutableArray<SkyscannerSegment *> *mutableArrayOfSegments = [[NSMutableArray alloc] init];
    for (NSDictionary *eachDictionary in json[@"Segments"]) {
        SkyscannerSegment *eachSegment = [[SkyscannerSegment alloc] init];
        [[RPJSONMapper sharedInstance] mapJSONValuesFrom:eachDictionary toInstance:eachSegment
            usingMapping:@{
                           @"Id" : @"segmentID",
                           @"DepartureDateTime" : @"timeDeparture",
                           @"ArrivalDateTime" : @"timeArrival",
                           @"Duration" : @"duration",
                           @"FlightNumber" : @"flightNumber",
                           @"JourneyMode" : @"journeyMode",
                           @"Directionality" : @"directionality"
                           }];
        [mutableArrayOfSegments addObject:eachSegment];
    }
    /*
        Need to implement originStation, destinationStatioin, carrier, operatingCarrier.
     
        request.segments = mutableArrayOfSegments.
    */
    
    NSMutableArray<SkyscannerCarrier *> *mutableArrayOfCarriers = [[NSMutableArray alloc] init];
    for (NSDictionary *eachDictionary in json[@"Carriers"]) {
        SkyscannerCarrier *eachCarrier = [[SkyscannerCarrier alloc] init];
        [[RPJSONMapper sharedInstance] mapJSONValuesFrom:eachDictionary toInstance:eachCarrier
            usingMapping:@{
                           @"Id" : @"carrierID",
                           @"Code" : @"carrierCode",
                           @"Name" : @"carrierName",
                           @"ImageUrl" : @"carrierImageURL",
                           @"DisplayCode" : @"displayCode"
                           }];
        [mutableArrayOfCarriers addObject:eachCarrier];
    }
    
    NSMutableArray<SkyscannerAgent *> *mutableArrayOfAgents = [[NSMutableArray alloc] init];
    for (NSDictionary *eachDictionary in json[@"Agents"]) {
        SkyscannerAgent *eachAgent = [[SkyscannerAgent alloc] init];
        [[RPJSONMapper sharedInstance] mapJSONValuesFrom:eachDictionary toInstance:eachAgent
            usingMapping:@{
                           @"Id" : @"agentID",
                           @"Name" : @"agentName",
                           @"ImageUrl" : @"agentImageURL",
                           @"Status" : @"status",
                           @"Type" : @"agentType"
                           }];
        eachAgent.optimisedForMobile = [eachDictionary[@"OptimisedForMobile"] boolValue];
        [mutableArrayOfAgents addObject:eachAgent];
    }
    /*
        ID might not a NSNumber *. See if you need to add or not.
     
    */
    
    NSMutableArray<SkyscannerPlace *> *mutableArrayOfPlaces = [[NSMutableArray alloc] init];
    for (NSDictionary *eachDictionary in json[@"Places"]) {
        SkyscannerPlace *eachPlace = [[SkyscannerPlace alloc] init];
        [[RPJSONMapper sharedInstance] mapJSONValuesFrom:eachDictionary toInstance:eachPlace
            usingMapping:@{
                           @"Id" : @"id",
                           @"Code" : @"code",
                           @"Type" : @"type",
                           @"Name" : @"name"
                           }];
        [mutableArrayOfPlaces addObject:eachPlace];
    }
    
    NSMutableArray<SkyscannerCurrency *> *mutableArrayOfCurrencies = [[NSMutableArray alloc] init];
    for (NSDictionary *eachDictionary in json[@"Currencies"]) {
        SkyscannerCurrency *eachCurrency = [[SkyscannerCurrency alloc] init];
        [[RPJSONMapper sharedInstance] mapJSONValuesFrom:eachDictionary toInstance:eachCurrency
            usingMapping:@{
                           @"Code" : @"currencyCode",
                           @"Symbol" : @"currencySymbol",
                           @"ThousandsSeparator" : @"currencyThousandsSeparator",
                           @"DecimalSeparator" : @"currencyDecimalSeparator",
                           @"RoundingCoefficient" : @"roundingCoefficient",
                           @"DecimalDigits" : @"decimalDigits"
                           }];
        eachCurrency.symbolOnLeft = [eachDictionary[@"SymbolOnLeft"] boolValue];
        eachCurrency.spaceBetweenAmountAndSymbol = [eachDictionary[@"SpaceBetweenAmountAndSymbol"] boolValue];
        
        [mutableArrayOfCurrencies addObject:eachCurrency];
    }
}

@end
