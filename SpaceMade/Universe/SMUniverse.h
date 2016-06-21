//
//  SMUniverse.h
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AvailabilityMacros.h>

@interface SMUniverse : NSObject

/**
 The universe we all live in
 */
+ (instancetype)ourUniverse;

/**
 Theoretical parallel universe (not used)
 */
+ (instancetype)parallelUniverse UNAVAILABLE_ATTRIBUTE;

@end
