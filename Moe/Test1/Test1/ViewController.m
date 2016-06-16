//
//  ViewController.m
//  Test1
//
//  Created by Aung Moe on 6/15/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) loadView {
    self.view = [[UIView alloc] initWithFrame: self.screenRect];
    self.view.backgroundColor = [UIColor whiteColor];
  
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 200, 50)];
    label.text = @"Testing Label";
    label.font = [UIFont systemFontOfSize:30.f];
    [self.view addSubview:label];
    
    NSString *originalStr = @"jokololo";
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString:originalStr];
    NSRange searchRange = NSMakeRange(0, [attributedStr length]);
    
    while (searchRange != NSNotFound) {
        NSRange modifyRange = [originalStr rangeOfString:@"o" options:NSLiteralSearch range:searchRange];
        
        //Change attribute
        
        //redo searchRange
        
        
        
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
