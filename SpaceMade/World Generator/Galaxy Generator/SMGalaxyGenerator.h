//
//  SMGalaxyGenerator.h
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMGalaxy.h"

@interface SMGalaxyGenerator : NSObject

/**
 Generates unique galaxy
 */
+ (SMGalaxy *)newGalaxy;

/**
 Generates given number of unique galaxies
 */
+ (NSArray *)newGalaxies:(NSUInteger)count;

@end
