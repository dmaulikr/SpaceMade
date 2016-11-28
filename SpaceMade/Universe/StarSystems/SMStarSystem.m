//
//  SMStarSystem.m
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMStarSystem.h"

@interface SMStarSystem () {
    NSArray *_stars;
    NSArray *_planets;
}

@end

@implementation SMStarSystem

#pragma mark - Star System creation

+ (instancetype)starSystemWithStars:(NSArray *)stars planets:(NSArray *)planets {
    SMStarSystem *starSystem = [[self alloc] initWithStars:stars planets:planets];
    return starSystem;
}

#pragma mark - Init

- (instancetype)initWithStars:(NSArray *)stars planets:(NSArray *)planets {
    if (self = [super init]) {
        _stars = stars;
        _planets = planets;
    }
    
    return self;
}

@end
