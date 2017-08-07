//
//  ThemeManager.h
//  ThemeDemo
//
//  Created by 徐琰璋 on 2017/8/7.
//  Copyright © 2017年 上海览益信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ThemeModel.h"
#import "ThemeMapModel.h"

typedef  void (^SwitchThemeBlock)(void);

@interface ThemeManager : NSObject

@property(nonatomic,strong) ThemeModel *styleModel;

+ (ThemeManager *)sharedInstance;

- (void)addObserveKey:(ThemeMapModel *)key withSwitchThemBlock:(SwitchThemeBlock)block;

- (void)updateTheme;

@end
