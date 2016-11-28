//
//  SMTypes.h
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef SMTypes_h
#define SMTypes_h

typedef enum : NSUInteger {
    SMSpaceObjectUnknown = 0,
    SMSpaceObjectUniverse,
    SMSpaceObjectGalaxy,
    SMSpaceObjectStarSystem,
    SMSpaceObjectStar,
    SMSpaceObjectPlanet
} SMSpaceObject;

#endif /* SMTypes_h */
