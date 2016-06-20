//
//  ViewController.m
//  BlueLibrary
//
//  Created by Eli Ganem on 31/7/13.
//  Copyright (c) 2013 Eli Ganem. All rights reserved.
//

#import "ViewController.h"
#import "RedditTableViewCell.h"
#import "TTTAttributedLabel.h"

// 1. Construct the cells with the proper subviews
// 2. Style the subviews properly
// 3. Find the method that determines the height of the cell inside UITableViewDelegate
// 4. Find the method in TTTAttributedLabel that determines the size of an NSAttributedString
// 5. Read about NSAttributedStrings (learn how to convert an NSString into an NSAttributedString)
// 6. Use TTTAttributedLabel's method to return the size of each cell

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *view;
@property (nonatomic, strong) NSArray<NSString *> *bodyTextArray;
@property (nonatomic, strong) NSString *blogTagString;
@property (nonatomic, strong) NSArray<NSString *> *authorTagString;
@property (nonatomic, strong) NSArray<NSString *> *upvoteTagString;
@property (nonatomic, strong) NSArray<NSString *> *commentTagString;
@end

@implementation ViewController

- (void)loadView {
    self.view = [[UITableView alloc] init];
    
    [self.view registerClass:[RedditTableViewCell class] forCellReuseIdentifier:@"RedditTableViewCell"];
    self.view.rowHeight = UITableViewAutomaticDimension;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.delegate = self;
    self.view.dataSource = self;
    
    self.bodyTextArray = @[@"Monday Megathread! Ask questions and share knowledge; newcomer questions encouraged!", @"Case study: ADC] You, the ADC, are behind on farm, because the teams keep brawling mid, and they won't stop. What should you do?", @"Mastery Suggestion: Early trinket upgrade to Utility tree", @"TIL Caitlyn's headshot is literal \"head\"shot"];
    self.blogTagString = @"leagueoflegends";
    self.authorTagString = @[@"AutoModerator", @"VehaMeursault", @"Granmarfunk", @"areub"];
    self.upvoteTagString = @[@"107 * 3", @"1.3k * 7h", @"394 * 4h", @"1k * 12h"];
    self.commentTagString = @[@"1.3k", @"486", @"69", @"202"];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.bodyTextArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RedditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RedditTableViewCell" forIndexPath:indexPath];
    
    cell.bodyText.text = self.bodyTextArray[indexPath.row];
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 100.0f;
}

@end