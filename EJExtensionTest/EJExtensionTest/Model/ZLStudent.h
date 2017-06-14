//
//  ZLStudent.h
//  EJExtensionTest
//
//  Created by yuntong on 2017/6/14.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYModel.h"
#import "ZLBag.h"
#import "MJExtension.h"


@interface ZLStudent : NSObject
@property (copy, nonatomic) NSString *ID;
@property (copy, nonatomic) NSString *otherName;
@property (copy, nonatomic) NSString *nowName;
@property (copy, nonatomic) NSString *oldName;
@property (copy, nonatomic) NSString *nameChangedTime;
@property (copy, nonatomic) NSString *desc;
@property (strong, nonatomic) ZLBag *bag;
@property (strong, nonatomic) NSArray *books;
@end
