//
//  SkyScannerCarrier.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SkyScannerId;

@interface SkyScannerCarrier : NSObject

@property (nonatomic, strong) NSMutableArray<SkyScannerId *> *ids;
@property (nonatomic, strong) NSMutableArray<NSString *> *codes;
@property (nonatomic, strong) NSMutableArray<NSString *> *names;
@property (nonatomic, strong) NSMutableArray<NSString *> *imageUrl;
@property (nonatomic, strong) NSMutableArray<NSString *> *displayCode;

@end
