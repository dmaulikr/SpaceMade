//
//  SMUniverseGenerator.h
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMUniverse.h"

@interface SMUniverseGenerator : NSObject

/**
 Generates unique universe that game will use
 */
+ (SMUniverse *)newUniverse;

@end
