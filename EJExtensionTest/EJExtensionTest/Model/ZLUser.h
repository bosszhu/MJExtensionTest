//
//  ZLUser.h
//  EJExtensionTest
//
//  Created by yuntong on 2017/6/14.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJExtension.h"

@interface ZLUser : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *icon;
//@property (nonatomic, copy) NSString *age;
@property (assign, nonatomic) unsigned int age;
@property (nonatomic, copy) NSString *height;
@property (nonatomic, copy) NSString *money;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, copy) NSString *gay;
@end
