//
//  SkyScannerPlace.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyScannerId;

@interface SkyScannerPlace : NSObject

@property (nonatomic, strong) NSMutableArray<SkyScannerId *> *ids;
@property (nonatomic, strong) NSMutableArray<SkyScannerId *> *parentIds;
@property (nonatomic, strong) NSMutableArray<NSString *> *codes;
@property (nonatomic, strong) NSMutableArray<NSString *> *types;
@property (nonatomic, strong) NSMutableArray<NSString *> *names;

@end
