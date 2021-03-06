//
//  SMStar.h
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMAstronomicalObject.h"

typedef enum : NSUInteger {
    SMStarClassUnknown = 0,
    SMStarClassDwarf,
    SMStarClassGiant,
    SMStarClassHypergiant
} SMStarClass;

/**
 Describes Star — astronomical object, center of Star System.
 */
@interface SMStar : SMAstronomicalObject

@end
