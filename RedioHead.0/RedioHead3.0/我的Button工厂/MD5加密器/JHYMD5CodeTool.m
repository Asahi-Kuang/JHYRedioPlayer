//
//  JHYMD5CodeTool.m
//  RedioHead3.0
//
//  Created by J on 15/8/16.
//  Copyright (c) 2015年 J. All rights reserved.
//

#import "JHYMD5CodeTool.h"
#import "CommonCrypto/CommonDigest.h"

@implementation JHYMD5CodeTool
+ (NSString *)MD5StringFromString:(NSString *)str
{
    const char *cStr = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (unsigned int)strlen(cStr), result);
    
    return [[NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] uppercaseString];
}
@end
