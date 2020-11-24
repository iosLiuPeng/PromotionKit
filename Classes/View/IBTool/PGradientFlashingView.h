//
//  PGradientFlashingView.h
//  PGradientFlashingView
//
//  Created by 刘鹏i on 2018/12/26.
//  Copyright © 2018 wuhan.musjoy. All rights reserved.
//

#import "PGradientView.h"

NS_ASSUME_NONNULL_BEGIN

@interface PGradientFlashingView : PGradientView
@property (nonatomic, assign) IBInspectable CGFloat speed;///< 速度 (每秒移动的百分比距离，例如 0.8，正数向右，负数向左)
@property (nonatomic, assign) IBInspectable BOOL autoStart;///< 自动开始（默认No）
@property (nonatomic, strong) NSArray<UIColor *> *colors;///< 颜色数组（至少需要两个颜色）

/// 开始动画
- (void)startAnimation;

/// 结束动画
- (void)endAnimation;

@end

NS_ASSUME_NONNULL_END
