//
//  CATBaseService.h
//  MVCRefactoring
//
//  Created by zengcatch on 16/1/25.
//  Copyright © 2016年 catch. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CATFailedBlock)(NSString* msg);
typedef void (^CATSuccessBlock)(NSString* msg,id data);

@interface CATBaseService : NSObject

@end
