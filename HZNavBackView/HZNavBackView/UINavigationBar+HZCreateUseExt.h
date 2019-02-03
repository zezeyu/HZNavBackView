//
//  UINavigationBar+HZCreateUseExt.h
//  HZNavBackView
//
//  Created by 何泽的mac on 2019/2/3.
//  Copyright © 2019年 何泽的mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kHZScreenWidth [UIScreen mainScreen].bounds.size.width
#define kHZScreenHeight [UIScreen mainScreen].bounds.size.height
#define kHZTopHeight ([[UIApplication sharedApplication] statusBarFrame].size.height + 44.0)
#import "UIImage+HZCreateUseExt.h"
NS_ASSUME_NONNULL_BEGIN

@interface UINavigationBar (HZCreateUseExt)

-(void)hz_setElementsHidden;

@end

NS_ASSUME_NONNULL_END
