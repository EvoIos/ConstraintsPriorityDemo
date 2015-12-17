//
//  ViewController.m
//  ConstraintPriorityDemo
//
//  Created by zhenglanchun on 15/12/17.
//  Copyright © 2015年 dothisday. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL _isHidenFirstBtn;
    BOOL _isHidenSecondBtn;
    BOOL _isHidenThirdBtn;
}
//第3个按钮的约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *threeBtnToSecondBtnConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *threeBtnToFirstBtnConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *threeBtnToLabelConstraint;
//第2个按钮的约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *secondBtnToFirstBtnConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *secondBtnToLabelConstraint;
//三个按钮
@property (weak, nonatomic) IBOutlet UIButton *thirdBtn;
@property (weak, nonatomic) IBOutlet UIButton *secondBtn;
@property (weak, nonatomic) IBOutlet UIButton *firstBtn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化
    _isHidenFirstBtn = NO;
    _isHidenSecondBtn = NO;
    _isHidenThirdBtn = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
//隐藏-显示第一个按钮
- (IBAction)clickToHidenOrShowFirstBtn:(id)sender {
    _isHidenFirstBtn = !_isHidenFirstBtn;
    if (_isHidenFirstBtn) {
        self.firstBtn.hidden = YES;
        self.secondBtnToLabelConstraint.priority = 999;
        self.secondBtnToFirstBtnConstraint.priority = 750;
    } else {
        self.firstBtn.hidden = NO;
        self.secondBtnToLabelConstraint.priority = 750;
        self.secondBtnToFirstBtnConstraint.priority = 999;
    }
}

//隐藏-显示第二个按钮
- (IBAction)clickToHidenOrShowSecondBtn:(id)sender {
    _isHidenSecondBtn = !_isHidenSecondBtn;
    if (_isHidenSecondBtn) {
        self.secondBtn.hidden = YES;
        self.threeBtnToFirstBtnConstraint.priority = 999;
        self.threeBtnToLabelConstraint.priority = 750;
        self.threeBtnToSecondBtnConstraint.priority = 750;
    } else {
        self.secondBtn.hidden = NO;
        self.threeBtnToFirstBtnConstraint.priority = 750;
        self.threeBtnToLabelConstraint.priority = 750;
        self.threeBtnToSecondBtnConstraint.priority = 999;
    }
}

//隐藏-显示第三个按钮
- (IBAction)clickToHidenOrShowThirdBtn:(id)sender {
    _isHidenThirdBtn = !_isHidenThirdBtn;
    if (_isHidenThirdBtn) {
        self.thirdBtn.hidden = YES;
    } else {
        self.thirdBtn.hidden = NO;
    }
}

@end
