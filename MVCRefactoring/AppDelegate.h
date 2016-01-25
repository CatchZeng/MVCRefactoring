//
//  AppDelegate.h
//  MVCRefactoring
//
//  Created by zengcatch on 16/1/24.
//  Copyright © 2016年 catch. All rights reserved.
//

#import <UIKit/UIKit.h>

#define WEAKSELF                __weak __typeof(self)weakSelf = self;
#define STRONGSELF              __strong __typeof(weakSelf)strongSelf = weakSelf;


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

