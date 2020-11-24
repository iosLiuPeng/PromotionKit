//
//  PromotionKit.m
//  PromotionKit
//
//  Created by 刘鹏i on 2020/11/3.
//

#import "PromotionKit.h"
#import <WebInterface/WebInterface.h>
#import <MJControllerManager/MJControllerManager.h>
#import "ShareFriendGiveVC.h"

@interface PromotionKit ()
@property (nonatomic, weak) NSString *userID;///< 用户ID
@end

static PromotionKit *s_Singleton = nil;
static NSString *const API_USER_CHECK = @"User.check";  ///< 接口名：检查促销信息

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
        [self fetchPromotionInfo];
    }
    return self;
}

#pragma mark - Subjoin
- (void)checkUpdate
{
    
}

/// 请求促销信息
- (void)fetchPromotionInfo
{
    NSString *bundleID = [[NSBundle mainBundle] bundleIdentifier];
    NSString *uuid = _userID;
    
    NSDictionary *body = @{@"package": bundleID? bundleID: @"",
                           @"uuid": uuid? uuid: @""};
    
    [WebInterface startRequest:API_USER_CHECK describe:@"请求促销信息" body:body completion:^(BOOL isSucceed, NSString *message, id data) {
        
    }];
}


#pragma mark - Public
/// 配置用户ID
- (void)configUserID:(NSString *)userID
{
    _userID = userID;
}

/// 弹出内购
- (void)showIAP
{
    [MJControllerManager topViewController];
}

/// 加载网页
- (void)loadWebView:(NSString *)url
{
    
}

- (void)showVC
{
    ShareFriendGiveVC *vc = [[ShareFriendGiveVC alloc] init];
    vc.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [[MJControllerManager topViewController] presentViewController:vc animated:NO completion:nil];
}

@end
