//
//  CATLoginService.m
//  MVCRefactoring
//
//  Created by zengcatch on 16/1/24.
//  Copyright © 2016年 catch. All rights reserved.
//

#import "CATLoginService.h"
#import "CATUserEntity.h"

@implementation CATLoginService

-(void)loginWithUsername:(NSString *)username password:(NSString *)password type:(NSInteger)type success:(CATSuccessBlock)success failed:(CATFailedBlock)failed{
    //在这里调用网络、操作数据库等
    //返回数据并解析成相应的数据，这里模拟返回一个User的实体。
    //网络层这里推荐 巧哥使用命令模式封装的YTKNetworking！！！ 调用类似[[CATLoginAPI alloc]init] start...
    CATUserEntity* user = [[CATUserEntity alloc]init];
    user.gender = @"男";
    user.age = 20;
    if (type == 1) {
        user.username = @"老师";
    }else{
        user.username = @"学生";
    }
    success(@"登录成功!",user);
}

@end
