//
//  SMStarSystem.h
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMSpaceFormation.h"

/**
 Describes Star System -- assembly of planets, gravitationally rotating around at least one star.
 */
@interface SMStarSystem : SMSpaceFormation

+ (instancetype)starSystemWithStars:(NSArray *)stars planets:(NSArray *)planets;

@end
