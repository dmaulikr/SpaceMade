//
//  SMBrain.h
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SMBrain : NSObject

/**
 Game's brain
 */
+ (instancetype)mainBrain;

/**
 Random counts for different Universe objects
 */
- (NSUInteger)randomCountForSpaceObjectsWithType:(SMSpaceObject)type;

@end
