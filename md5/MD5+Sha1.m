//
//  MD5+Sha1.m
//  xiaoyou
//
//  Created by BadGuy on 14-11-4.
//  Copyright (c) 2014年 Shawn Yao. All rights reserved.
//

#import "MD5+Sha1.h"
#import <CommonCrypto/CommonDigest.h>
#import "base64.h"
@implementation MD5_Sha1

/**
 *   md5加密 32位
 */

+(NSString *)getMd5_32Bit_String:(NSString *)srcString{
    const char *cStr = [srcString UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, strlen(cStr), digest );
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];

    return result;
}
/**
 *  sha1加密
 */
+(NSString *)getSha1String:(NSString *)srcString{
    const char *cstr = [srcString cStringUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [NSData dataWithBytes:cstr length:srcString.length];

    uint8_t digest[CC_SHA1_DIGEST_LENGTH];

    CC_SHA1(data.bytes, data.length, digest);

    NSMutableString* result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];

    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x", digest[i]];
    }

    return result;
}

+(NSString *)returnBase64
{
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];

    NSString * userid = [defaults objectForKey:@"userID"];
    
    int  stringDate =[[NSDate date] timeIntervalSince1970];
    NSString * timestamp = [NSString stringWithFormat:@"%d",stringDate];
    NSString * randomNumber = [NSString stringWithFormat:@"%d",arc4random() % 10000 +1];
    
    NSString * sha1Str = [self getSha1String:[self getMd5_32Bit_String:[NSString stringWithFormat:@"%@%@%@%@%@",VERSION,timestamp,randomNumber,userid,APPKEY]]];
    NSString * base64Str = [NSString stringWithFormat:@"%@,%@,%@,%@,%@",VERSION,timestamp,randomNumber,userid,sha1Str];
    
    return [base64 encodeBase64String:[base64 encodeBase64String:base64Str]];
    
}

//+(NSString *)returnBase64
//{
//
//}




@end
