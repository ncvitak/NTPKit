//
//  NSError+LocalizedDescription.h
//  NTPKit
//
//  Created by Nico Cvitak on 2016-05-02.
//  Copyright © 2016 Nicholas Cvitak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSError (LocalizedDescription)

NS_ASSUME_NONNULL_BEGIN

- (instancetype)initWithDomain:(NSString *)domain code:(NSInteger)code localizedDescription:(nullable NSString *)localizedDescription;
+ (instancetype)errorWithDomain:(NSString *)domain code:(NSInteger)code localizedDescription:(nullable NSString *)localizedDescription;

NS_ASSUME_NONNULL_END

@end
