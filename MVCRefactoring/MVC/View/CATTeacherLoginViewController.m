//
//  CATTeacherLoginViewController.m
//  MVCRefactoring
//
//  Created by zengcatch on 16/1/24.
//  Copyright © 2016年 catch. All rights reserved.
//

#import "CATTeacherLoginViewController.h"
#import "CATLoginController.h"
#import "CATUserEntity.h"

@interface CATTeacherLoginViewController ()<CATLoginControllerDelegate>

@property (nonatomic,strong) CATLoginController* controller;
@property (weak, nonatomic) IBOutlet UILabel *labMsg;

@end

@implementation CATTeacherLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"老师登录界面";
}

- (IBAction)loginButtonClicked:(id)sender {
    [self.controller loginWithUsername:@"111" password:@"111" type:1];
}

- (CATLoginController *) controller {
    if(_controller == nil) {
        _controller = [[CATLoginController alloc] initWith:self];
    }
    return _controller;
}

-(void)loginSuccessWithData:(id)data{
    //处理登录成功后的界面呈现
    if (data && [data isKindOfClass:[CATUserEntity class]]) {
        CATUserEntity* user = (CATUserEntity *)data;
        _labMsg.text = [NSString stringWithFormat:@"登录成功！你好:%@",user.username];
    }
}

-(void)loginFailedWithMsg:(NSString *)msg{
    //处理登录失败后的界面呈现
    NSLog(@"登录失败:%@",msg);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end