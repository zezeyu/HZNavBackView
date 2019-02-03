//
//  UINavigationBar+HZCreateUseExt.m
//  HZNavBackView
//
//  Created by 何泽的mac on 2019/2/3.
//  Copyright © 2019年 何泽的mac. All rights reserved.
//

#import "UINavigationBar+HZCreateUseExt.h"

@implementation UINavigationBar (HZCreateUseExt)

- (void)hz_setElementsHidden{
    [self setBackgroundImage:[UIImage hz_createImageByColor:[UIColor clearColor] size:CGSizeMake(kHZScreenWidth, kHZTopHeight)] forBarMetrics:UIBarMetricsDefault];
    self.shadowImage = [[UIImage alloc]init];
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:NSClassFromString(@"_UIBarBackground")] || [obj isKindOfClass:NSClassFromString(@"_UINavigationBarBackground")]) {
            obj.hidden = YES;
            
        }
    }];
}


@end
