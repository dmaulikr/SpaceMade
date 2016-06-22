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
            return arc4random() % ((MAX_NUMBER_OF_GALAXIES_PER_UNIVERSE - MIN_NUMBER_OF_GALAXIES_PER_UNIVERSE) + MIN_NUMBER_OF_GALAXIES_PER_UNIVERSE);
            break;
        case SMSpaceObjectStarSystem:
            return arc4random() % ((MAX_NUMBER_OF_STAR_SYSTEMS_PER_GALAXY - MIN_NUMBER_OF_STAR_SYSTEMS_PER_GALAXY) + MIN_NUMBER_OF_STAR_SYSTEMS_PER_GALAXY);
            break;
        case SMSpaceObjectPlanet:
            return arc4random() % ((MAX_NUMBER_OF_PLANETS_PER_STAR_SYSTEM - MIN_NUMBER_OF_PLANETS_PER_STAR_SYSTEM) + MIN_NUMBER_OF_PLANETS_PER_STAR_SYSTEM);
            break;
        case SMSpaceObjectStar:
            return arc4random() % ((MAX_NUMBER_OF_STARS_PER_STAR_SYSTEM - MIN_NUMBER_OF_STARS_PER_STAR_SYSTEM) + MIN_NUMBER_OF_STARS_PER_STAR_SYSTEM);
            break;
            
        default:
            return 0;
            break;
    }
}

@end
