//
//  ThemeModel.m
//  ThemeDemo
//
//  Created by 徐琰璋 on 2017/8/7.
//  Copyright © 2017年 上海览益信息科技有限公司. All rights reserved.
//

#import "ThemeModel.h"

@implementation ThemeModel

-(instancetype)initWith:(NSString *)hex
{
    self = [super init];
    if (self) {
        self.bgColorHex = hex;
    }
    return self;
}

@end
