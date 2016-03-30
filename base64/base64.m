//
//  base64.m
//  Base64
//
//  Created by lining on 13-11-6.
//  Copyright (c) 2013年 lining. All rights reserved.
//

#import "base64.h"

@implementation base64

//编码
+(NSString *)encodeBase64String:(NSString * )input
{
    NSData * data = [input dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    data = [GTMBase64 encodeData:data];
    
    NSString * base64String = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
    
}

//解码
+(NSString *)decodeBase64String:(NSString *)input
{
    NSData * data = [input dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    data = [GTMBase64 decodeData:data];
    NSString * base64String = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
    
}

+(NSString *)encodeBase64Data:(NSData *)data
{
    data = [GTMBase64 encodeData:data];
    NSString * base64String = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
    
}



+(NSString *)decodeBase64Data:(NSData *)data
{
    data = [GTMBase64 decodeData:data];
    NSString * base64String = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
    
}










@end
