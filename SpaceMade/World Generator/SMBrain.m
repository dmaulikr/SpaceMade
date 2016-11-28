//
//  SMBrain.m
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMBrain.h"

@implementation SMBrain

#pragma mark - Brain of the game

+ (instancetype)mainBrain {
    static SMBrain *brain = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        brain = [[SMBrain alloc] init];
    });
    
    return brain;
}

#pragma mark - Planet metadata calculation

- (SMPlanetBiome)planetBiomeForPlanetIndex:(NSUInteger)planetIndex {
    switch (planetIndex) {
        case 0:
            return SMPlanetBiomeDesert;
            break;
        case 1:
            return SMPlanetBiomeGreen;
            break;
        case 2:
            return SMPlanetBiomeSnow;
            break;
            
        default:
            return SMPlanetBiomeUnknown;
            break;
    }
}

- (SMPlanetSizeCategory)planetSizeCategoryForPlanetIndex:(NSUInteger)planetIndex {
    return (SMPlanetSizeCategory)([self randomIntegerBetween:SMPlanetSizeCategoryDwarf
                                                         and:SMPlanetSizeCategoryGiant]);
}

- (SMPlanetPhysicalData)planetPhysicalDataForPlanetWithIndex:(NSUInteger)planetIndex
                                                sizeCategory:(SMPlanetSizeCategory)sizeCategory {

    SMPlanetPhysicalData physicalData = { PLANET_PHYSICS_GRAVITY_DEFAULT };
    return physicalData;
}

- (SMPlanetSize)planetSizeForPlanetIndex:(NSUInteger)planetIndex
                            sizeCategory:(SMPlanetSizeCategory)sizeCategory {

    switch (sizeCategory) {
        case SMPlanetSizeCategoryDwarf: {
            SMPlanetSize size = {
                PLANET_MAP_LENGTH_DWARF,
                PLANET_MAP_HEIGHT_DEFAULT,
                PLANET_MAP_DEEPTH_DEFAULT
            };
            return size;
            
            break;
        }
            
        case SMPlanetSizeCategoryRegular: {
            SMPlanetSize size = {
                PLANET_MAP_LENGTH_REGULAR,
                PLANET_MAP_HEIGHT_DEFAULT,
                PLANET_MAP_DEEPTH_DEFAULT
            };
            return size;
            
            break;
        }
            
        case SMPlanetSizeCategoryGiant: {
            SMPlanetSize size = {
                PLANET_MAP_LENGTH_GIANT,
                PLANET_MAP_HEIGHT_DEFAULT,
                PLANET_MAP_DEEPTH_DEFAULT
            };
            return size;
            
            break;
        }
            
        default: {
            SMPlanetSize size = { 0, 0, 0 };
            return size;
            
            break;
        }
    }
}

#pragma mark - Random numbers

- (NSUInteger)randomCountForSpaceObjectsWithType:(SMSpaceObject)type {
    switch (type) {
        case SMSpaceObjectUnknown:
            return 0;
            break;
            
        case SMSpaceObjectUniverse:
            return NUMBER_OF_UNIVERSES;
            break;
        
        case SMSpaceObjectGalaxy:
            return (MIN_NUMBER_OF_GALAXIES_PER_UNIVERSE + arc4random() % (MAX_NUMBER_OF_GALAXIES_PER_UNIVERSE - MIN_NUMBER_OF_GALAXIES_PER_UNIVERSE + 1));
            break;
        case SMSpaceObjectStarSystem:
            return (MIN_NUMBER_OF_STAR_SYSTEMS_PER_GALAXY + arc4random() % (MAX_NUMBER_OF_STAR_SYSTEMS_PER_GALAXY - MIN_NUMBER_OF_STAR_SYSTEMS_PER_GALAXY + 1));
            break;
        case SMSpaceObjectPlanet:
            return (MIN_NUMBER_OF_PLANETS_PER_STAR_SYSTEM + arc4random() % (MAX_NUMBER_OF_PLANETS_PER_STAR_SYSTEM - MIN_NUMBER_OF_PLANETS_PER_STAR_SYSTEM + 1));
            break;
        case SMSpaceObjectStar:
            return (MIN_NUMBER_OF_STARS_PER_STAR_SYSTEM + arc4random() % (MAX_NUMBER_OF_STARS_PER_STAR_SYSTEM - MIN_NUMBER_OF_STARS_PER_STAR_SYSTEM + 1));
            break;
            
        default:
            return 0;
            break;
    }
}

- (NSUInteger)randomIntegerBetween:(NSUInteger)from and:(NSUInteger)to {
    return (from + arc4random() % (to - from + 1));
}

@end
