//
//  ZLStatusResult.m
//  EJExtensionTest
//
//  Created by yuntong on 2017/6/14.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "ZLStatusResult.h"

@implementation ZLStatusResult
//+ (NSDictionary *)mj_objectClassInArray {
//    return @{
//        @"statuses" : [ZLStatus class],
//        @"ads" : @"MJAd"
//    };
//}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"statuses" : [ZLStatus class],
                     @"ads" : @"MJAd"
             };
}
MJExtensionLogAllProperties
@end
