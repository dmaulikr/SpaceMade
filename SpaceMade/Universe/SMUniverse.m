//
//  SMUniverse.m
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMUniverse.h"

@interface SMUniverse () {
    
}

@end

@implementation SMUniverse

#pragma mark - Universe singleton

/**
 The universe we all live in
 */
+ (instancetype)ourUniverse {
    static SMUniverse *realUniverse = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        realUniverse = [[SMUniverse alloc] init];
    });
    
    return realUniverse;
}

/**
 Theoretical parallel universe (not used)
 */
+ (instancetype)parallelUniverse {
    return nil;
};

@end
