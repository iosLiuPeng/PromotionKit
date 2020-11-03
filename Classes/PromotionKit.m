//
//  PromotionKit.m
//  PromotionKit
//
//  Created by 刘鹏i on 2020/11/3.
//

#import "PromotionKit.h"

@interface PromotionKit ()

@end

static PromotionKit *s_Singleton = nil;

@implementation PromotionKit
#pragma mark - Life Cycle
/// 实例化
+ (instancetype)sharedInstance
{
    static dispatch_once_t once_patch;
    dispatch_once(&once_patch, ^() {
        s_Singleton = [[self alloc] init];
    });
    return s_Singleton;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_Singleton = [super allocWithZone:zone];
    });
    
    return s_Singleton;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
