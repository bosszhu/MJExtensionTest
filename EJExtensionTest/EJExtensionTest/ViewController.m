//
//  ViewController.m
//  EJExtensionTest
//
//  Created by yuntong on 2017/6/14.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"
#import "ZLUser.h"
#import "ZLStatus.h"
#import "ZLStatusResult.h"
#import "MJAd.h"
#import "ZLStudent.h"
typedef enum {
    SexMale,
    SexFemale
} Sex;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testYYModel];
    [self testMJExtension];
}
- (void)testYYModel {
    
}

- (void)testMJExtension {
    // 1.定义一个字典(简单)
    NSDictionary *dict1 = @{
                           @"name" : @"Jack",
                           @"icon" : @"lufy.png",
                           @"age" : @"20",
                           @"height" : @1.55,
                           @"money" : @"100.9",
                           @"sex" : @(SexFemale),
                           @"gay" : @"1"
                           //  @"gay" : @"NO"
                           //  @"gay" : @"true"
                           };
    
//    ZLUser *user = [ZLUser mj_objectWithKeyValues:dict1];
//    NSLog(@"user --- name=%@, icon=%@, age=%zd, height=%@, money=%@, sex=%@, gay=%@", user.name, user.icon, user.age, user.height, user.money, user.sex, user.gay);
    
    // 2.定义一个JSON字符串
    NSString *jsonString = @"{\"name\":\"Jack\", \"icon\":\"lufy.png\", \"age\":20, \"height\":333333.7}";
    
//    ZLUser *user1 = [ZLUser mj_objectWithKeyValues:jsonString];
//    NSLog(@"user1 ---name=%@, icon=%@, age=%d, height=%@", user1.name, user1.icon, user1.age, user1.height);
    
    // 3.定义一个字典(复杂)
    NSDictionary *dict2 = @{
                           @"text" : @"是啊，今天天气确实不错！",
                           
                           @"user" : @{
                                   @"name" : @"Jack",
                                   @"icon" : @"lufy.png"
                                   },
                           
                           @"retweetedStatus" : @{
                                   @"text" : @"今天天气真不错！",
                                   
                                   @"user" : @{
                                           @"name" : @"Rose",
                                           @"icon" : @"nami.png"
                                           }
                                   }
                           };
    ZLStatus *status = [ZLStatus mj_objectWithKeyValues:dict2];
    NSLog(@"%@",status);
//    // 3.打印status的属性
//    NSString *text = status.text;
//    NSString *name = status.user.name;
//    NSString *icon = status.user.icon;
//    MJExtensionLog(@"--%@ -- text=%@, name=%@, icon=%@", status, text, name, icon);
    
//    // 4.打印status.retweetedStatus的属性
//    NSString *text2 = status.retweetedStatus.text;
//    NSString *name2 = status.retweetedStatus.user.name;
//    NSString *icon2 = status.retweetedStatus.user.icon;
//    MJExtensionLog(@"text2=%@, name2=%@, icon2=%@", text2, name2, icon2);

    
    
    // 4.定义一个字典(复杂2,字典内是数组)
    NSDictionary *dict3 = @{
                           @"statuses" : @[
                                   @{
                                       @"text" : @"今天天气真不错！",
                                       
                                       @"user" : @{
                                               @"name" : @"Rose",
                                               @"icon" : @"nami.png"
                                               }
                                       },
                                   
                                   @{
                                       @"text" : @"明天去旅游了",
                                       
                                       @"user" : @{
                                               @"name" : @"Jack",
                                               @"icon" : @"lufy.png"
                                               }
                                       }
                                   
                                   ],
                           
                           @"ads" : @[
                                   @{
                                       @"image" : @"ad01.png",
                                       @"url" : @"http://www.小码哥ad01.com"
                                       },
                                   @{
                                       @"image" : @"ad02.png",
                                       @"url" : @"http://www.小码哥ad02.com"
                                       }
                                   ],
                           
                           @"totalNumber" : @"2014",
                           @"previousCursor" : @"13476589",
                           @"nextCursor" : @"13476599"
                           };
//    ZLStatusResult *statusResult = [ZLStatusResult mj_objectWithKeyValues:dict3];
//    // 4.打印statuses数组中的模型属性
//    for (ZLStatus *status in statusResult.statuses) {
//        NSString *text = status.text;
//        NSString *name = status.user.name;
//        NSString *icon = status.user.icon;
//        MJExtensionLog(@"text=%@, name=%@, icon=%@", text, name, icon);
//    }
//    NSLog(@"statusResult == %@",statusResult);
//    for (MJAd *ad in statusResult.ads) {
//        NSLog(@"%@---%@",ad.image,ad.url);
//    }
    
    // 5.定义一个字典(多级映射)
    NSDictionary *dict4 = @{
                           @"id" : @"20",
                           @"desciption" : @"好孩子",
                           @"name" : @{
                                   @"newName" : @"lufy",
                                   @"oldName" : @"kitty",
                                   @"info" : @[
                                           @"test-data",
                                           @{@"nameChangedTime" : @"2013-08-07"}
                                           ]
                                   },
                           @"other" : @{
                                   @"bag" : @{
                                           @"name" : @"小书包",
                                           @"price" : @100.7
                                           }
                                   }
                           };
//    ZLStudent *stu = [ZLStudent mj_objectWithKeyValues:dict4];
//    // 3.打印ZLStudent模型的属性
//    MJExtensionLog(@"ID=%@, desc=%@, otherName=%@, oldName=%@, nowName=%@, nameChangedTime=%@", stu.ID, stu.desc, stu.otherName, stu.oldName, stu.nowName, stu.nameChangedTime);
//    MJExtensionLog(@"bagName=%@, bagPrice=%f", stu.bag.name, stu.bag.price);
    
    // 6.定义一个字典数组
    NSArray *dictArray1 = @[
                           @{
                               @"name" : @"Jack",
                               @"icon" : @"lufy.png",
                               },
                           
                           @{
                               @"name" : @"Rose",
                               @"icon" : @"nami.png",
                               }
                           ];

//    NSArray *userArray = [ZLUser mj_objectArrayWithKeyValuesArray:dictArray1];
//    // 3.打印userArray数组中的MJUser模型属性
//    for (ZLUser *user in userArray) {
//        MJExtensionLog(@"name=%@, icon=%@", user.name, user.icon);
//    }
    #pragma mark NSObject中的ID属性对应着字典中的id
//     模型内转换属性
//        [NSObject mj_setupReplacedKeyFromPropertyName:^NSDictionary *{
//            return @{
//                     @"ID" : @"id"
//                     };
//        }];
    [ZLStudent mj_setupReplacedKeyFromPropertyName:^NSDictionary *{
        return @{
                   @"ID" : @"id",
                   @"desc" : @"desciption",
                   @"oldName" : @"name.oldName",
                   @"nowName" : @"name.newName",
                   @"nameChangedTime" : @"name.info[1].nameChangedTime",
                   @"bag" : @"other.bag"
                   };
    }];
    
//     ZLStudent *stu = [ZLStudent mj_objectWithKeyValues:dict4];
//     MJExtensionLog(@"ID=%@, desc=%@, otherName=%@, oldName=%@, nowName=%@, nameChangedTime=%@", stu.ID, stu.desc, stu.otherName, stu.oldName, stu.nowName, stu.nameChangedTime);
//     MJExtensionLog(@"bagName=%@, bagPrice=%f", stu.bag.name, stu.bag.price);

    #pragma mark MJUser类的只有name、icon属性参与字典转模型
//    [MJUser mj_setupAllowedPropertyNames:^NSArray *{
//        return @[@"name", @"icon"];
//    }];
    

    #pragma mark MJStatusResult类中的ads数组中存放的是MJAd模型
    [ZLStatusResult mj_setupObjectClassInArray:^NSDictionary *{
        return @{
                 @"statuses" : [ZLStatus class], // @"statuses" : [MJStatus class],
                 @"ads" : @"MJAd" // @"ads" : [MJAd class]
                 };
    }];
        [ZLStatusResult mj_setupObjectClassInArray:^NSDictionary *{
            return @{
                     @"statuses" : [ZLStatus class], // @"statuses" : [MJStatus class],
                     @"ads" : @"MJAd" // @"ads" : [MJAd class]
                     };
        }];
    
    [ZLStatus mj_setupObjectClassInArray:^NSDictionary *{
        return @{
                 @"user" : [ZLUser class], // @"statuses" : [MJStatus class]
                 };
    }];
            ZLStatusResult *statusResult =[ZLStatusResult mj_objectWithKeyValues:dict3];
    
    //     4.打印statuses数组中的模型属性
            for (ZLStatus *status in statusResult.statuses) {
                NSString *text = status.text;
                NSString *name = status.user.name;
                NSString *icon = status.user.icon;
                MJExtensionLog(@"text=%@, name=%@, icon=%@", text, name, icon);
            }
            NSLog(@"statusResult == %@",statusResult);
            for (MJAd *ad in statusResult.ads) {
                NSLog(@"%@---%@",ad.image,ad.url);
            }
    #pragma mark MJStatusResult类中的ads数组中存放的是MJAd模型
//    [MJStudent mj_setupReplacedKeyFromPropertyName:^NSDictionary *{
//        return @{
//                 @"desc" : @"desciption",
//                 @"oldName" : @"name.oldName",
//                 @"nowName" : @"name.newName",
//                 @"otherName" : @[@"otherName", @"name.newName", @"name.oldName"],
//                 @"nameChangedTime" : @"name.info[1].nameChangedTime",
//                 @"bag" : @"other.bag"
//                 };
//    }];
    // 相当于在MJStudent.m中实现了+(NSDictionary *)mj_replacedKeyFromPropertyName方法
    
    
#pragma mark MJBook的日期处理、字符串nil值处理
//    [MJBook mj_setupNewValueFromOldValue:^id(id object, id oldValue, MJProperty *property) {
//        if ([property.name isEqualToString:@"publisher"]) {
//            if (oldValue == nil || [oldValue isKindOfClass:[NSNull class]]) return @"";
//        } else if (property.type.typeClass == [NSDate class]) {
//            NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
//            fmt.dateFormat = @"yyyy-MM-dd";
//            return [fmt dateFromString:oldValue];
//        }
//        
//        return oldValue;
//    }];
    // 相当于在MJBook.中实现了- (id)mj_newValueFromOldValue:property:方法
}

/**
 *  统一转换属性名（比如驼峰转下划线）
 */
void replacedKeyFromPropertyName121()
{
    // 1.定义一个字典
    NSDictionary *dict = @{
                           @"nick_name" : @"旺财",
                           @"sale_price" : @"10.5",
                           @"run_speed" : @"100.9"
                           };
    
    // 2.将字典转为MJUser模型
//    MJDog *dog = [MJDog mj_objectWithKeyValues:dict];
    
    // 3.打印MJUser模型的属性
//    MJExtensionLog(@"nickName=%@, scalePrice=%f runSpeed=%f", dog.nickName, dog.salePrice, dog.runSpeed);
}
/**
 *  过滤字典的值（比如字符串日期处理为NSDate、字符串nil处理为@""）
 */
void newValueFromOldValue()
{
    // 1.定义一个字典
    NSDictionary *dict = @{
                           @"name" : @"5分钟突破iOS开发",
                           @"publishedTime" : @"2011-09-10"
                           };
    
    // 2.将字典转为MJUser模型
//    MJBook *book = [MJBook mj_objectWithKeyValues:dict];
    
    // 3.打印MJUser模型的属性
//    MJExtensionLog(@"name=%@, publisher=%@, publishedTime=%@", book.name, book.publisher, book.publishedTime);
}

/**
 *  使用MJExtensionLog打印模型的所有属性
 */
void logAllProperties()
{
//    MJUser *user = [[MJUser alloc] init];
//    user.name = @"MJ";
//    user.age = 10;
//    user.sex = SexMale;
//    user.icon = @"test.png";
//    
//    MJExtensionLog(@"%@", user);
}
@end
