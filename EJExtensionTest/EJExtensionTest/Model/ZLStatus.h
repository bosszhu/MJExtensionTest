//
//  ZLStatus.h
//  EJExtensionTest
//
//  Created by yuntong on 2017/6/14.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJExtension.h"
#import "ZLUser.h"

@interface ZLStatus : NSObject
@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) ZLUser *user;
@property (strong, nonatomic) ZLStatus *retweetedStatus;


@end
