//
//  ThemeMapModel.m
//  ThemeDemo
//
//  Created by 徐琰璋 on 2017/8/7.
//  Copyright © 2017年 上海览益信息科技有限公司. All rights reserved.
//

#import "ThemeMapModel.h"

@interface ThemeMapModel()

@property(nonatomic,strong)  NSString *pointerString;
@property(nonatomic,strong)  NSString *targetTypeName;

@end

@implementation ThemeMapModel

- (instancetype)initWithTarget:(id)target selctorName:(NSString *)selectorName {
    if (self = [super init]) {
        _target = target;
        _selectorName = selectorName;
        _pointerString = [NSString stringWithFormat:@"%p", target];
        _targetTypeName = NSStringFromClass([target class]);
    }
    return self;
}

- (BOOL)isEqual:(id)object {
    ThemeMapModel *model = (ThemeMapModel *)object;
    
    if (model) {
        if([self.pointerString isEqualToString:model.pointerString] &&
           [self.selectorName isEqualToString:model.selectorName] &&
           [self.targetTypeName isEqualToString:model.targetTypeName]){
            return YES;
        }
    }
    return NO;
}

- (NSUInteger)hash {
    NSUInteger hash = [self.pointerString hash] ^ [self.selectorName hash] ^ [self.targetTypeName hash];
    return hash;
}

- (id)copyWithZone:(NSZone *)zone {
    ThemeMapModel *themeModel = [[ThemeMapModel allocWithZone:zone] initWithTarget:self.target selctorName:self.selectorName];
    return themeModel;
}

@end
