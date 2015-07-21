//
//  DiscountPromotionViewController.m
//  CZC
//
//  Created by 张浩 on 15/7/21.
//  Copyright (c) 2015年 周德艺. All rights reserved.
//

#import "DiscountPromotionViewController.h"
#import "DiscountPromotionTableViewCell.h"
@interface DiscountPromotionViewController ()

@end

@implementation DiscountPromotionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"优惠促销";
    self.promotionArr = [[NSMutableArray alloc]init];
    //设置导航栏按钮
    
    UIButton *setBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 30)];
    [setBtn setImage:[UIImage imageNamed:@"head_tb1"] forState:UIControlStateNormal];
    [setBtn addTarget:self action:@selector(setClick:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:setBtn];
    
    //设置tableView的cel有内容时显示分割线，无内容时，不显示分割线
    self.tableView.tableFooterView = [[UIView alloc]init];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DiscountPromotionTableViewCell";
    DiscountPromotionTableViewCell *cell = (DiscountPromotionTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        NSBundle *bundle = [NSBundle mainBundle];
        NSArray *nibArray = [bundle loadNibNamed:CellIdentifier owner:self options:nil];
        cell = (DiscountPromotionTableViewCell *)[nibArray objectAtIndex:0];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld",(long)indexPath.row);
    //    switch (indexPath.section) {
    
}

@end
