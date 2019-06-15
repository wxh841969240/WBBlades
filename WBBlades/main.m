//
//  main.m
//  WBBlades
//
//  Created by 邓竹立 on 2019/6/14.
//  Copyright © 2019 邓竹立. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WBBladesFileManager.h"
#import "WBBladesScanManager.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //读取mach-o文件
        NSString *filePath = @"/Users/a58/Desktop/aaa/libWBTribe.a";
        NSData *fileData = [WBBladesFileManager  readFromFile:filePath];
        
        [WBBladesScanManager scanStaticLibrary:fileData];
        
    }
    return 0;
}