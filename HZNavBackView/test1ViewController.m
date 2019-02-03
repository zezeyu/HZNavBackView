//
//  test1ViewController.m
//  HZNavBackView
//
//  Created by 何泽的mac on 2019/2/3.
//  Copyright © 2019年 何泽的mac. All rights reserved.
//

#import "test1ViewController.h"
#import "UIViewController+HZBasetopView.h"
@interface test1ViewController ()

@end

@implementation test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"测试1";
    self.hz_topView.image = [UIImage imageNamed:@"nav_bg"];
    // Do any additional setup after loading the view.
//    self.edgesForExtendedLayout = UIRectEdgeNone;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
