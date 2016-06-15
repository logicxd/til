//
//  SkyScannerPlaceID.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SkyScannerId : NSObject

@property (nonatomic, strong) NSNumber *locationId;
@property (nonatomic, strong) NSMutableArray<NSNumber *> *legId;
@property (nonatomic, strong) NSNumber *segmentId;

@end
