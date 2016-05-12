//
//  NSError+SysErrno.h
//  NTPKit
//
//  Created by Nico Cvitak on 2016-05-02.
//  Copyright © 2016 Nicholas Cvitak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSError (SysErrno)

NS_ASSUME_NONNULL_BEGIN

- (instancetype)initWithDomain:(NSString *)domain sysErrno:(errno_t)sysErrno;
+ (instancetype)errorWithDomain:(NSString *)domain sysErrno:(errno_t)sysErrno;

NS_ASSUME_NONNULL_END;

@end
