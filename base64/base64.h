//
//  base64.h
//  Base64
//
//  Created by lining on 13-11-6.
//  Copyright (c) 2013年 lining. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GTMBase64.h"
@interface base64 : NSObject

+ (NSString*)encodeBase64String:(NSString *)input;
+ (NSString*)decodeBase64String:(NSString *)input;
+ (NSString*)encodeBase64Data:(NSData *)data;
+ (NSString*)decodeBase64Data:(NSData *)data;



@end
