//
//  AppDelegate.m
//  UI_01(计算器)
//
//  Created by administrator on 16/5/23.
//  Copyright © 2016年 ibakan. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"程序加载完毕的时候调用");
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"程序将由活跃状态转换为非活跃状态的时候调用,(例如:当有电话或者短信或者锁屏的时候),你应该在这个方法内完成暂停功能");
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"应用已经进入,比如按压home键");
   
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"应用将要进入前台");
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"应用已经转换为活跃状态");
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"应用将要结束");
    
  
}

@end
