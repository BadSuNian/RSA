//
//  NSString+OAuthConsumer.h
//  RoadshowFinance
//
//  Created by GP on 15/9/9.
//  Copyright (c) 2015年 GP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (OAuthConsumer)
- (NSString *)URLEncodedString;// string转utf8


- (NSString *)URLDecodedString;//utf8 转nsstring

@end
