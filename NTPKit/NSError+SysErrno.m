//
//  NSError+SysErrno.m
//  NTPKit
//
//  Created by Nico Cvitak on 2016-05-02.
//  Copyright © 2016 Nicholas Cvitak. All rights reserved.
//

#import "NSError+SysErrno.h"
#import "NSError+LocalizedDescription.h"

@implementation NSError (SysErrno)

- (instancetype)initWithDomain:(NSString *)domain sysErrno:(errno_t)sysErrno {
    NSString *errorDescription = [[NSString alloc] initWithUTF8String:strerror(sysErrno)];
    return [self initWithDomain:domain code:sysErrno localizedDescription:errorDescription];
}

+ (instancetype)errorWithDomain:(NSString *)domain sysErrno:(errno_t)sysErrno {
    return [[[self class] alloc] initWithDomain:domain sysErrno:sysErrno];
}

@end
