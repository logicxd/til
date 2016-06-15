//
//  SkyScannerAgents.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyScannerId;
@class BooleanArray;

@interface SkyScannerAgents : NSObject

@property (nonatomic, strong) NSMutableArray<SkyScannerId *> *ids;
@property (nonatomic, strong) NSMutableArray<NSString *> *names;
@property (nonatomic, strong) NSMutableArray<NSString *> *imageUrls;
@property (nonatomic, strong) NSMutableArray<NSString *> *statuses;
@property (nonatomic, strong) NSMutableArray<BooleanArray *> *optimisedForMobiles;
@property (nonatomic, strong) NSMutableArray<NSString *> *types;

@end
