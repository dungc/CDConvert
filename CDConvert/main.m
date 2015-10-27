//
//  main.m
//  CDConvert
//
//  Created by Dong on 15/10/27.
//  Copyright (c) 2015年 东 程. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString+CDConvert.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *demo = @"我是 demo";
        
        NSLog(@"%@", [demo convertToPinYin:NO]);
        NSLog(@"%@", [demo convertToPinYin:YES]);
    }
    return 0;
}
