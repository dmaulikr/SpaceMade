//
//  SMStarGenerator.h
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMStar.h"

@interface SMStarGenerator : NSObject

/**
 Generates unique star
 */
+ (SMStar *)newStar;

/**
 Generates given number of unique stars
 */
+ (NSArray *)newStars:(NSUInteger)count;

@end
