//
//  SkyScannerCurrency.h
//  SkyScannerClone
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BooleanArray;

@interface SkyScannerCurrency : NSObject

@property (nonatomic, strong) NSMutableArray<NSString *> *codes;
@property (nonatomic, strong) NSMutableArray<NSString *> *symbols;
@property (nonatomic, strong) NSMutableArray<NSString *> *thousandsSeparators;
@property (nonatomic, strong) NSMutableArray<NSString *> *decimalSeparators;
@property (nonatomic, strong) NSMutableArray<BooleanArray *> *symbolOnLefts;
@property (nonatomic, strong) NSMutableArray<BooleanArray *> *spaceBetweenAmountAndSymbols;
@property (nonatomic, strong) NSMutableArray<NSString *> *roundingCoefficients;
@property (nonatomic, strong) NSMutableArray<NSString *> *decimalDigits;


@end
