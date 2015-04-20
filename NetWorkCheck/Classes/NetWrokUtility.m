//
//  NetWrokUtility.m
//  NetWork
//
//  Created by Benster on 15/1/21.
//  Copyright (c) 2015年 Benster. All rights reserved.
//

#import "NetWrokUtility.h"

@implementation NetWrokUtility

+ (BOOL)checkNetWork:(NSString *)checkURL
{
    NSURLResponse *response;
    NSError *error;
    
    NSURL *url = [NSURL URLWithString:checkURL];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"HEAD";
    request.cachePolicy = NSURLRequestReloadIgnoringLocalAndRemoteCacheData;
    request.timeoutInterval = 10.0;
    
    [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    NSLog(@"testNetwork = %li", (long)[(NSHTTPURLResponse *)response statusCode]);
    NSLog(@"testNetwork error = %@", error);
    
    if ([(NSHTTPURLResponse *)response statusCode] == 200) {
        return YES;
    } else {
        return NO;
    }
}

@end
