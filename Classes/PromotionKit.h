//
//  PromotionKit.h
//  PromotionKit
//
//  Created by 刘鹏i on 2020/11/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PromotionKit : NSObject
/// 实例化
+ (instancetype)sharedInstance;

- (void)showVC;
@end

NS_ASSUME_NONNULL_END
