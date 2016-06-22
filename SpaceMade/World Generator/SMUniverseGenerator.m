//
//  SMUniverseGenerator.m
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMUniverseGenerator.h"
#import "SMGalaxyGenerator.h"

@implementation SMUniverseGenerator

#pragma mark - Public interface

+ (SMUniverse *)newUniverse {
    return [SMUniverse universeWithGalaxies:[SMGalaxyGenerator newGalaxies:[[SMBrain mainBrain] randomCountForSpaceObjectsWithType:SMSpaceObjectGalaxy]]];
}

#pragma mark - Internal Logic


@end
