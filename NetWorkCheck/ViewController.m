//
//  ViewController.m
//  NetWorkCheck
//
//  Created by Benster on 15/4/20.
//  Copyright (c) 2015年 Benster. All rights reserved.
//

#import "ViewController.h"
#import "NetWrokUtility.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BOOL success = [NetWrokUtility checkNetWork:@"http://baidu.com"];
    
    if (success) {
        NSLog(@"网络正常");
    } else {
        NSLog(@"网络异常");
    }
}

@end
