//
//  NSString+Crypto.m
//  Demo
//
//  Created by Qi He on 12-2-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NSString+Crypto.h"

@implementation NSString( Crypto )

- (NSData *) sha256 {
  unsigned char               *buffer;
  
  if ( ! ( buffer = (unsigned char *) malloc( CC_SHA256_DIGEST_LENGTH ) ) ) return nil;
  
  CC_SHA256( [self UTF8String], [self lengthOfBytesUsingEncoding: NSUTF8StringEncoding], buffer );
  
  return [NSData dataWithBytesNoCopy: buffer length: CC_SHA256_DIGEST_LENGTH];
}

@end