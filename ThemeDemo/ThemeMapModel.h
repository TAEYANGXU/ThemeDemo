//
//  ThemeMapModel.h
//  ThemeDemo
//
//  Created by 徐琰璋 on 2017/8/7.
//  Copyright © 2017年 上海览益信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThemeMapModel : NSObject

@property (nonatomic, weak, readonly) id target;
@property (nonatomic, copy, readonly) NSString *selectorName;

- (instancetype)initWithTarget:(id)target selctorName:(NSString *)selectorName;

@end
