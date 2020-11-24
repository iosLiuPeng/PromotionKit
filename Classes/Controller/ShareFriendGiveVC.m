//
//  ShareFriendGiveVC.m
//  PromotionKit
//
//  Created by 刘鹏i on 2020/11/5.
//

#import "ShareFriendGiveVC.h"
#import <MJLocalization/MJLocalizationBundle.h>

@interface ShareFriendGiveVC ()
@property (strong, nonatomic) IBOutlet UILabel *lblGetCoins;

@end

@implementation ShareFriendGiveVC
#pragma makr - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self viewConfig];
}

#pragma makr - Subjoin
- (void)viewConfig
{
    _lblGetCoins.text = BundleLocStringFormat(@"share_friend_give_2", @"10");
}

#pragma makr - Action
- (IBAction)clickedOK:(id)sender {
    
}

@end
