//
//  SMGalaxy.m
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMGalaxy.h"

@interface SMGalaxy () {
    NSArray *_starSystems;
}

@end

@implementation SMGalaxy

#pragma mark - Galaxy creation

+ (instancetype)galaxyWithStarSystems:(NSArray *)starSystems {
    SMGalaxy *galaxy = [[self alloc] initWithStarSystems:starSystems];
    return galaxy;
}

#pragma mark - Init

- (instancetype)initWithStarSystems:(NSArray *)starSystems {
    if (self = [super init]) {
        _starSystems = starSystems;
    }
    
    return self;
}

@end
