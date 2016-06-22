//
//  SMPlanetGenerator.h
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMPlanet.h"

@interface SMPlanetGenerator : NSObject

/**
 Generates unique planet
 */
+ (SMPlanet *)newPlanet;

/**
 Generates given number of unique planets
 */
+ (NSArray *)newPlanets:(NSUInteger)count;

@end
