//
//  RootViewController.m
//  DHKit
//
//  Created by 江道洪 on 2017/12/16.
//  Copyright © 2017年 SilenceVoid. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (nonatomic, strong) NSArray *list;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self configureUI];
    [self testDate];
}

- (void)configureUI {
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.tableView.tableFooterView = [UIView new];
    self.title = @"DHKit";
}

- (void)testDate {
    
    NSMutableArray *mAry = [NSMutableArray array];
    for (NSInteger i = 0; i < 10; i++) {
        [mAry addObject:@(i).stringValue];
    }
    _list = [NSArray arrayWithArray:mAry];
}

#pragma mark - table view delegete & datasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    cell.textLabel.text = _list[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
