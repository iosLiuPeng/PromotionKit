//
//  ViewController.m
//  PromotionKit
//
//  Created by 刘鹏i on 2020/11/3.
//

#import "ViewController.h"
#import <PromotionKit/PromotionKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_after(3.0, dispatch_get_main_queue(), ^{
        [[PromotionKit sharedInstance] showVC];
    });
    
}


@end
