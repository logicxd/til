//
//  ViewController.m
//  Test5
//
//  Created by Aung Moe on 6/7/16.
//  Copyright © 2016 Aung Moe. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView
{
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = [UIColor colorWithRed:244.f/255.f green:245.f/255.f blue:241/255.f alpha:1];

    UILabel *reviewTitle = [[UILabel alloc] init];
    reviewTitle.text = @"Review Highlights";
    [reviewTitle setFont:[UIFont systemFontOfSize:16]];
    [self.view addSubview:reviewTitle];
    
    UIView *body1 = [[UIView alloc] init];
    body1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:body1];
    
    UIView *body1Picture = [[UIView alloc] init];
    [body1Picture setBackgroundColor:[UIColor grayColor]];
    [body1 addSubview:body1Picture];
    
    UILabel *body1Text = [[UILabel alloc] init];
    [body1Text setNumberOfLines:0];
    [body1Text setFont:[UIFont systemFontOfSize:15]];
    body1Text.text = @"\"lol Kimchee burrito- love their spicy pork, very flavorful and love kiwi in it to cool it down alil.\"";
    [body1 addSubview:body1Text];

    UILabel *body1Count = [[UILabel alloc] init];
    body1Count.text = @"118 reviews";
    body1Count.textColor = [UIColor colorWithRed:180.f/255.f green:180.f/255.f blue:180/255.f alpha:1];
    [body1Count setFont:[UIFont systemFontOfSize:13]];
    [body1Count setNumberOfLines:0];
    [body1 addSubview:body1Count];
    
    UIButton *body1Btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [body1Btn setTintColor:[UIColor colorWithRed:180.f/255.f green:180.f/255.f blue:180/255.f alpha:1]];
    [body1 addSubview:body1Btn];
    
//    [self addHorizontalLineBreak:body1];
    
    UIView *body2 = [[UIView alloc] init];
    body2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:body2];
    
    UIView *body2Picture = [[UIView alloc] init];
    [body2Picture setBackgroundColor:[UIColor orangeColor]];
    [body2 addSubview:body2Picture];
    
    UILabel *body2Text = [[UILabel alloc] init];
    [body2Text setNumberOfLines:0];
    [body2Text setFont:[UIFont systemFontOfSize:15]];
    body2Text.text = @"\"Also, if youre headed to a Giants day game, get your grub on at HRD beforehand so you don't waste your money on mediocre stadium hot dogs.\"";
    [body2 addSubview:body2Text];
    
    UILabel *body2Count = [[UILabel alloc] init];
    body2Count.text = @"38 reviews";
    body2Count.textColor = [UIColor colorWithRed:180.f/255.f green:180.f/255.f blue:180/255.f alpha:1];
    [body2Count setFont:[UIFont systemFontOfSize:13]];
    [body2Count setNumberOfLines:0];
    [body2 addSubview:body2Count];
    
    UIButton *body2Btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [body2Btn setTintColor:[UIColor colorWithRed:180.f/255.f green:180.f/255.f blue:180/255.f alpha:1]];
    [body2 addSubview:body2Btn];
    
//    [self addHorizontalLineBreak:body2];
    
    UIView *body3 = [[UIView alloc] init];
    body3.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:body3];
    
    UIView *body3Picture = [[UIView alloc] init];
    [body3Picture setBackgroundColor:[UIColor redColor]];
    [body3 addSubview:body3Picture];
    
    UILabel *body3Text = [[UILabel alloc] init];
    [body3Text setNumberOfLines:0];
    [body3Text setFont:[UIFont systemFontOfSize:15]];
    body3Text.text = @"\"I shared two absolute classics (as seen on the Food Network of course!), the kimchee burrito and the Mongolian cheesesteak.\"";
    [body3 addSubview:body3Text];
    
    UILabel *body3Count = [[UILabel alloc] init];
    body3Count.text = @"66 reviews";
    body3Count.textColor = [UIColor colorWithRed:180.f/255.f green:180.f/255.f blue:180/255.f alpha:1];
    [body3Count setFont:[UIFont systemFontOfSize:13]];
    [body3Count setNumberOfLines:0];
    [body3 addSubview:body3Count];
    
    UIButton *body3Btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [body3Btn setTintColor:[UIColor colorWithRed:180.f/255.f green:180.f/255.f blue:180/255.f alpha:1]];
    [body3 addSubview:body3Btn];
    
    [reviewTitle mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(40);
        make.left.equalTo(self.view).offset(15);
    }];
  
    [body1 mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(reviewTitle.mas_bottom).offset(7);
        make.height.equalTo(@(100));
        make.width.equalTo(self.view);
        
        [body1Picture mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(body1).offset(10);
            make.top.equalTo(body1).offset(10);
            make.width.height.equalTo(@35);
        }];

        [body1Text mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(body1).offset(52);
            make.right.equalTo(body1).offset(-30);
            make.top.equalTo(body1).offset(10);
        }];
        
        [body1Count mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(body1Text);
            make.top.equalTo(body1Text.mas_bottom).offset(5);
        }];
        
        [body1Btn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(body1);
            make.left.equalTo(body1Text.mas_right);
            make.right.equalTo(body1);
        }];
    }];
    
    [body2 mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(body1.mas_bottom).offset(1);
        make.bottom.equalTo(body2Count).offset(7);
        make.width.equalTo(self.view);
        
        [body2Picture mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(body2).offset(10);
            make.top.equalTo(body2).offset(10);
            make.width.height.equalTo(@35);
        }];
        
        [body2Text mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(body2).offset(52);
            make.right.equalTo(body2).offset(-30);
            make.top.equalTo(body2).offset(10);
        }];
        
        [body2Count mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(body2Text);
            make.top.equalTo(body2Text.mas_bottom).offset(5);
        }];
        
        [body2Btn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(body2);
            make.left.equalTo(body2Text.mas_right);
            make.right.equalTo(body2);
        }];
    }];
    
    [body3 mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(body2.mas_bottom).offset(1);
        make.bottom.equalTo(body3Count).offset(7);
        make.width.equalTo(self.view);
        
        [body3Picture mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(body3).offset(10);
            make.top.equalTo(body3).offset(10);
            make.width.height.equalTo(@35);
        }];
        
        [body3Text mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(body3).offset(52);
            make.right.equalTo(body3).offset(-30);
            make.top.equalTo(body3).offset(10);
        }];
        
        [body3Count mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(body3Text);
            make.top.equalTo(body3Text.mas_bottom).offset(5);
        }];
        
        [body3Btn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(body3);
            make.left.equalTo(body3Text.mas_right);
            make.right.equalTo(body3);
        }];
    }];
}

- (void)addHorizontalLineBreak:(UIView *) view
{
    UILabel *lineBreak = [[UILabel alloc] init];
    lineBreak.backgroundColor = [UIColor colorWithRed:180.f/255.f green:180.f/255.f blue:180/255.f alpha:1];
    [view addSubview:lineBreak];
    
    [lineBreak mas_remakeConstraints:^(MASConstraintMaker *make) {
        float width = _screenRect.size.width * .88; //320 * .88
        make.top.equalTo(view.mas_bottom);
        make.centerX.equalTo(view);
        make.height.equalTo(@20);
        make.width.equalTo(@(width));
    }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
