//
//  main.m
//  Test3
//
//  Created by Aung Moe on 6/6/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EmptyFile.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EmptyFile *obj1 = [[EmptyFile alloc] init];
        EmptyFile *obj2 = [[EmptyFile alloc] init];
        
        NSLog(@"%@\n%@", obj1, obj2);
        
        
    }
    return 0;
}
