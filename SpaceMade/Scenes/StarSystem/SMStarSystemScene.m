//
//  GameScene.m
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright (c) 2016 Vladislav Averin. All rights reserved.
//

#import "SMStarSystemScene.h"

@interface SMStarSystemScene () {
    
}

@end

@implementation SMStarSystemScene

#pragma mark - Scene life cycle

- (void)didMoveToView:(SKView *)view {
    [self loadStarSystemData];
    [self constructScene];
}

#pragma mark - Data loading

- (void)loadStarSystemData {
    
}

#pragma mark - Scene constructions

- (void)constructScene {
    /* Add star system background */
    self.backgroundColor = [UIColor colorWithRed:0.02
                                           green:0.14
                                            blue:0.31
                                           alpha:1.00];
    
    /* Define area which has generated planets */
    
    /* Get planet nodes created using generated data */
    
    /* Place planets in their area */
}

#pragma mark - Frame life cycle

- (void)update:(CFTimeInterval)currentTime {
    
}

#pragma mark - Touch events

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

@end
