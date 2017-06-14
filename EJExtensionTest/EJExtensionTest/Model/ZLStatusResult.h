//
//  ZLStatusResult.h
//  EJExtensionTest
//
//  Created by yuntong on 2017/6/14.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLStatus.h"
#import "MJExtension.h"
@interface ZLStatusResult : NSObject

@property (nonatomic, strong) NSMutableArray <ZLStatus *>*statuses;

/** 存放着一堆的广告数据（里面都是MJAd模型） */
@property (strong, nonatomic) NSArray *ads;

@property (nonatomic, copy) NSString *totalNumber;
@property (nonatomic, copy) NSString *previousCursor;
@property (nonatomic, copy) NSString *nextCursor;
///** 总数 */
//@property (strong, nonatomic) NSNumber *totalNumber;
///** 上一页的游标 */
//@property (assign, nonatomic) long long previousCursor;
///** 下一页的游标 */
//@property (assign, nonatomic) long long nextCursor;
@end
