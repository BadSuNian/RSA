/*
 @author: ideawu
 @link: https://github.com/ideawu/Objective-C-RSA
*/

#import <Foundation/Foundation.h>

//#define pubkey @"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCeVbRke21/Da1IfcgAHJDDWjL7bZBaPc+4fsYn5HJeVtMKbl8hPjWWCuhgoMtUMPdjvq/s8WTf+bGLoScY7j61VhW16TTa5353gE6kthfzX0SwUNJhr8OKTwcYfYhialfxUQorBzW9jDqfjABs0aqsxsh9c/QcW3AT/cc9BgeQ3wIDAQAB"

@interface RSA : NSObject

// return base64 encoded string
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;
// return raw data
+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;
+ (NSString *)decryptString:(NSString *)str publicKey:(NSString *)pubKey;
+ (NSData *)decryptData:(NSData *)data publicKey:(NSString *)pubKey;
+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;
+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;

@end
