//
//  UILabel+Theme.m
//  ThemeDemo
//
//  Created by 徐琰璋 on 2017/8/7.
//  Copyright © 2017年 上海览益信息科技有限公司. All rights reserved.
//

#import "UILabel+Theme.h"
#import "ThemeManager.h"
#import "UIColor+Hex.h"

@implementation UILabel (Theme)

- (void)bl_setThemeTextColor{
    
    self.backgroundColor = [UIColor colorWithHexString:[ThemeManager  sharedInstance].styleModel.bgColorHex];
    self.textColor = [UIColor whiteColor];
    
    #define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;
    WS(weakSelf)
    SwitchThemeBlock switchThemeBlock = ^{
        [weakSelf bl_setThemeTextColor];
    };
    
    [[ThemeManager sharedInstance] addObserveKey:[self keyWithSelector:@selector(bl_setThemeTextColor)] withSwitchThemBlock:switchThemeBlock];
}

-(ThemeMapModel *)keyWithSelector:(SEL)selector{
    
    ThemeMapModel *model = [[ThemeMapModel alloc] initWithTarget:self selctorName: NSStringFromSelector(selector)];
    return model;
}

@end
