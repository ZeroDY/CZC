//
//  InstallTimeViewController.h
//  CZC
//
//  Created by 张浩 on 15/7/22.
//  Copyright (c) 2015年 周德艺. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface InstallTimeViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UIPickerView *pickView;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;

@property (nonatomic,strong)NSArray *timeArr;


- (IBAction)submitClick:(id)sender;
- (IBAction)cancelClick:(id)sender;
@end
