//
//  SMGalaxyGenerator.m
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMGalaxyGenerator.h"
#import "SMStarSystemGenerator.h"
#import "SMGalaxy.h"

@implementation SMGalaxyGenerator

#pragma mark - Public interface

+ (SMGalaxy *)newGalaxy {
    return [SMGalaxy galaxyWithStarSystems:[SMStarSystemGenerator newStarSystems:[[SMBrain mainBrain]randomCountForSpaceObjectsWithType:SMSpaceObjectStarSystem]]];
}

+ (NSArray *)newGalaxies:(NSUInteger)count {
    NSMutableArray *galaxies = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < count; i++) {
        [galaxies addObject:[self newGalaxy]];
    }
    
    return galaxies;
}

@end
