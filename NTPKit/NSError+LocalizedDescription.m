//
//  NSError+LocalizedDescription.m
//  NTPKit
//
//  Created by Nico Cvitak on 2016-05-02.
//  Copyright © 2016 Nicholas Cvitak. All rights reserved.
//

#import "NSError+LocalizedDescription.h"

@implementation NSError (LocalizedDescription)

- (instancetype)initWithDomain:(NSString *)domain code:(NSInteger)code localizedDescription:(NSString *)localizedDescription {
    NSDictionary *userInfo = localizedDescription ? [[NSDictionary alloc] initWithObjectsAndKeys:localizedDescription, NSLocalizedDescriptionKey, nil] : nil;
    return [self initWithDomain:domain code:code userInfo:userInfo];
}

+ (instancetype)errorWithDomain:(NSString *)domain code:(NSInteger)code localizedDescription:(NSString *)localizedDescription {
    return [[[self class] alloc] initWithDomain:domain code:code localizedDescription:localizedDescription];
}

@end
