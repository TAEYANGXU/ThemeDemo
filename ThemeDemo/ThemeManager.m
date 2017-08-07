//
//  ThemeManager.m
//  ThemeDemo
//
//  Created by 徐琰璋 on 2017/8/7.
//  Copyright © 2017年 上海览益信息科技有限公司. All rights reserved.
//

#import "ThemeManager.h"

@interface ThemeManager()

@property (nonatomic,strong) NSMutableDictionary<id,id> *blockDictionary;

@end

@implementation ThemeManager

+ (ThemeManager *)sharedInstance{

    static  ThemeManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

- (id)init {
    self = [super init];
    if ( self ) {
        self.blockDictionary = [NSMutableDictionary dictionary];
        self.styleModel = [[ThemeModel alloc] initWith:@"#e94646"];
    }
    return self;
}

- (void)addObserveKey:(ThemeMapModel *)key withSwitchThemBlock:(SwitchThemeBlock)block {
    if (block) {
        NSArray *allKeys = [self.blockDictionary allKeys];
        
        if (![allKeys containsObject:key]) {
            self.blockDictionary[key] = block;
        }
    }
}

- (void)updateTheme {
    for (ThemeMapModel *key in [self.blockDictionary allKeys]) {
        id object = key.target;
        if (object) {
            if ([object respondsToSelector:NSSelectorFromString(key.selectorName)]) {
                SwitchThemeBlock block = self.blockDictionary[key];
                if (block) {
                    block();
                }
            }
            
        } else {
            [self.blockDictionary removeObjectForKey:key];
        }
    }
}

@end
