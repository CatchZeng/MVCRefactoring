//
//  CATLoginController.h
//  MVCRefactoring
//
//  Created by zengcatch on 16/1/24.
//  Copyright © 2016年 catch. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CATLoginControllerDelegate <NSObject>

-(void)loginSuccessWithData:(id)data;
-(void)loginFailedWithMsg:(NSString *)msg;

@end

@interface CATLoginController : NSObject

-(id)initWith:(id<CATLoginControllerDelegate>)delegate;

-(void)loginWithUsername:(NSString *)username password:(NSString *)password type:(NSInteger)type;

@end
