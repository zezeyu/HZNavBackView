//
//  ViewController.m
//  HZNavBackView
//
//  Created by 何泽的mac on 2019/2/2.
//  Copyright © 2019年 何泽的mac. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+HZBasetopView.h"
#import "test1ViewController.h"
@interface ViewController ()
@property(nonatomic,strong)UILabel *testLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self hz_NavigationRighttitleBut:@"下一级" action:@selector(goTest)];
    self.view.backgroundColor = [UIColor whiteColor];
    self.hz_edgesForExtendedLayout = UIRectEdgeNone;
    UIColor * start = [UIColor colorWithRed:64/255.0 green:136/255.0 blue:246/255.0 alpha:1];
    UIColor * end = [UIColor colorWithRed:23/255.0 green:205/255.0 blue:227/255.0 alpha:1];
    [self hz_GradientColors:[NSArray arrayWithObjects:start,end,nil] startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 0)];
    
    [self.view addSubview:self.testLabel];
}

//用xib上的控件会被渐变色覆盖，正常现象。
- (IBAction)changeHeight:(UIButton *)sender {
    if (sender.tag == 100) {//变高
        if (self.hz_topView.frame.size.height < kHZScreenHeight) {
            [UIView animateWithDuration:0.3 animations:^{
                self.hz_changeTopViewHeight = 50;
            }];
        }
    }else{//变矮
        if (self.hz_topView.frame.size.height > kHZTopHeight) {
            [UIView animateWithDuration:0.3 animations:^{
                self.hz_changeTopViewHeight = -50;
            }];
        }
    }
}

-(void)goTest{
    test1ViewController * test = [[test1ViewController alloc]init];
    [self.navigationController pushViewController:test animated:YES];
}

-(UILabel *)testLabel{
    if (!_testLabel) {
        _testLabel = [[UILabel alloc]init];
        _testLabel.frame = CGRectMake(20, 50, kHZScreenWidth - 20, 60);
        _testLabel.text = @"测试导航栏变高了也会在视图的最上面~（代码写的label）";
        _testLabel.textColor = [UIColor blackColor];
        _testLabel.numberOfLines = 0;
    }
    return _testLabel;
}

@end
