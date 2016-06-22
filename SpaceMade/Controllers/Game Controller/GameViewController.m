//
//  GameViewController.m
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright (c) 2016 Vladislav Averin. All rights reserved.
//

#import "GameViewController.h"
#import "SMStarSystemScene.h"

@implementation GameViewController

#pragma mark - View life cycle

- (void)viewDidLoad {
    [super viewDidLoad];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;
    
    // Create and configure the scene.
    SMStarSystemScene *scene = [SMStarSystemScene nodeWithFileNamed:@"StarSystemScene"];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
}

#pragma mark - Data generation

- (void)generateTestWorld {
    
}

#pragma mark - Orientation

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - System messages

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
