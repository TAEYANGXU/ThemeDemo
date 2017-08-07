//
//  ThemeModel.h
//  ThemeDemo
//
//  Created by 徐琰璋 on 2017/8/7.
//  Copyright © 2017年 上海览益信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThemeModel : NSObject

@property(nonatomic,strong) NSString *bgColorHex;

-(instancetype)initWith:(NSString *)hex;

@end
