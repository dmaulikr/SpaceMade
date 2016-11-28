//
//  SMStarSystemGenerator.m
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMStarSystemGenerator.h"
#import "SMStarSystem.h"
#import "SMStarGenerator.h"
#import "SMPlanetGenerator.h"

@implementation SMStarSystemGenerator

#pragma mark - Public interface

+ (SMStarSystem *)newStarSystem {
    return [SMStarSystem starSystemWithStars:[SMStarGenerator newStars:[[SMBrain mainBrain] randomCountForSpaceObjectsWithType:SMSpaceObjectStar]] planets:[SMPlanetGenerator newPlanets:[[SMBrain mainBrain] randomCountForSpaceObjectsWithType:SMSpaceObjectPlanet]]];
}

+ (NSArray *)newStarSystems:(NSUInteger)count {
    NSMutableArray *starSystems = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < count; i++) {
        [starSystems addObject:[self newStarSystem]];
    }
    
    return starSystems;
}

@end
