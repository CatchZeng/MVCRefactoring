//
//  CATLoginService.h
//  MVCRefactoring
//
//  Created by zengcatch on 16/1/24.
//  Copyright © 2016年 catch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CATBaseService.h"

@interface CATLoginService : CATBaseService

-(void)loginWithUsername:(NSString *)username password:(NSString *)password type:(NSInteger)type success:(CATSuccessBlock)success failed:(CATFailedBlock)failed;

@end
