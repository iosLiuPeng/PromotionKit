//
//  Constant.h
//  PhoneCall
//
//  Created by lyqflnh on 2018/3/28.
//  Copyright © 2018年 Musjoy. All rights reserved.
//

#ifndef Constant_h
#define Constant_h

#define ForTest

#ifdef ForTest
// TestFlight环境
#define kBaseHost                       @"https://localapp.musjoy.com:4443"
#define kServerBaseHost                 @"https://localapp.musjoy.com:4443"
#else
// 发布环境
#define kBaseHost                       @"https://res.nowarder.com"
#define kServerBaseHost                 @"https://server.nowarder.com"
#endif


// URL路由
#define kServerPath                         @"/apps/PhoneCall/PhoneCall24/"
#define kBaseUrl                            combine(kBaseHost, kServerPath)
#define kServerUrl                          combine(kServerBaseHost, kServerPath)
#define kServerAction                       combine(kServerUrl, @"action/")


#endif /* Constant_h */









