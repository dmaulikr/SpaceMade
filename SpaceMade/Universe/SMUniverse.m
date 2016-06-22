//
//  SMUniverse.m
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMUniverse.h"

@interface SMUniverse () {
    NSArray *_galaxies;
}

@end

@implementation SMUniverse

#pragma mark - Universe creation

+ (instancetype)universeWithGalaxies:(NSArray *)galaxies {
    SMUniverse *universe = [[self alloc] initWithGalaxies:galaxies];
    return universe;
}

#pragma mark - Init

- (instancetype)initWithGalaxies:(NSArray *)galaxies {
    if (self = [super init]) {
        _galaxies = galaxies;
    }
    
    return self;
}

@end
