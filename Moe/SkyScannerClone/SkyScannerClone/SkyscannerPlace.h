//
//  SkyscannerPlace.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/16/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SkyscannerPlace : NSObject

@property (nonatomic, copy) NSString *placeCode;
@property (nonatomic, copy) NSString *placeType;
@property (nonatomic, copy) NSString *placeName;
@property (nonatomic, strong) NSNumber *placeID;
@property (nonatomic, strong) NSNumber *parentID;

@end

