//
//  SMGalaxy.h
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMSpaceFormation.h"

/**
 Describes galaxy -- assembly of Star Systems.
 */
@interface SMGalaxy : SMSpaceFormation

+ (instancetype)galaxyWithStarSystems:(NSArray *)starSystems;

@end
