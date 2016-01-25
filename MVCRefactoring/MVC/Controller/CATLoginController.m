//
//  CATLoginController.m
//  MVCRefactoring
//
//  Created by zengcatch on 16/1/24.
//  Copyright © 2016年 catch. All rights reserved.
//

#import "CATLoginController.h"
#import "CATLoginService.h"
#import "AppDelegate.h"

@interface CATLoginController()

@property (nonatomic,weak) id<CATLoginControllerDelegate> delegate;
@property (nonatomic,strong) CATLoginService* service;

@end

@implementation CATLoginController

-(id)initWith:(id<CATLoginControllerDelegate>)delegate{
    self = [super init];
    if (self) {
        _delegate = delegate;
    }
    return self;
}

-(void)loginWithUsername:(NSString *)username password:(NSString *)passwor type:(NSInteger)type{
    WEAKSELF
    [self.service loginWithUsername:username password:passwor type:type success:^(NSString *msg, id data) {
        STRONGSELF
        if (data && strongSelf.delegate && [strongSelf.delegate respondsToSelector:@selector(loginSuccessWithData:)]){//登录成功 && delegate实现了相应的方法
            [strongSelf.delegate  loginSuccessWithData:data];
        }else if(strongSelf.delegate && [strongSelf.delegate respondsToSelector:@selector(loginFailedWithMsg:)]){//登录失败 && delegate实现了相应的方法
            [strongSelf.delegate loginFailedWithMsg:msg];
        }else{
            //handle...
        }
    } failed:^(NSString *msg) {
        //handle error
    }];
}

- (CATLoginService *) service {
    if(!_service) {
        _service = [[CATLoginService alloc] init];
    }
    return _service;
}

@end