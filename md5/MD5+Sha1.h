//
//  MD5+Sha1.h
//  xiaoyou
//
//  Created by BadGuy on 14-11-4.
//  Copyright (c) 2014年 Shawn Yao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD5_Sha1 : NSObject



#define VERSION @"1"
#define APPKEY @"fff21e42a5c2b85c1b7261228ad127cb"
#define HTTPHEADER @"H-XY"
/**
 *  MD5加密
 */
+(NSString *)getMd5_32Bit_String:(NSString *)srcString;

/**
 *  sha1加密
 */
+(NSString *)getSha1String:(NSString *)srcString;

/**
 *  HTTP header Base 加的东西
 */

+(NSString *)returnBase64;


@end
