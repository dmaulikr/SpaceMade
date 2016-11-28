//
//  SMBrain.h
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMPlanet.h"

@interface SMBrain : NSObject

/**
 Game's brain
 */
+ (instancetype)mainBrain;

/**
 Planet metadata calculation
 */
- (SMPlanetBiome)planetBiomeForPlanetIndex:(NSUInteger)planetIndex;
- (SMPlanetSizeCategory)planetSizeCategoryForPlanetIndex:(NSUInteger)planetIndex;
- (SMPlanetPhysicalData)planetPhysicalDataForPlanetWithIndex:(NSUInteger)planetIndex
                                                sizeCategory:(SMPlanetSizeCategory)sizeCategory;
- (SMPlanetSize)planetSizeForPlanetIndex:(NSUInteger)planetIndex
                            sizeCategory:(SMPlanetSizeCategory)sizeCategory;

/**
 Random counts for different Universe objects
 */
- (NSUInteger)randomCountForSpaceObjectsWithType:(SMSpaceObject)type;

@end
