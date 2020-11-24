//
//  PIBImageView.m
//  PromotionKit
//
//  Created by 刘鹏i on 2020/11/5.
//

#import "PIBImageView.h"

#define DefaultBundle       @"Resource" ///< 默认Bundle

@implementation PIBImageView

- (void)setBundleImage:(NSString *)bundleImage
{
    _bundleImage = bundleImage;
    
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]] pathForResource:DefaultBundle ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    
//    self.image =
}

@end
