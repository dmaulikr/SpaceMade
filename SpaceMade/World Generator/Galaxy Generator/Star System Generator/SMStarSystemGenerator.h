//
//  SMStarSystemGenerator.h
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMStarSystem.h"

@interface SMStarSystemGenerator : NSObject

/**
 Generates unique star system
 */
+ (SMStarSystem *)newStarSystem;

/**
 Generates given number of unique star systems
 */
+ (NSArray *)newStarSystems:(NSUInteger)count;

@end
