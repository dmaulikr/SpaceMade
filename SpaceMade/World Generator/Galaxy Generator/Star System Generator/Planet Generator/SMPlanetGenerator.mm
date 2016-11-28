//
//  SMPlanetGenerator.m
//  SpaceMade
//
//  Created by Vladislav Averin on 22/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMPlanetGenerator.h"
#import "PerlinNoise.h"

@interface SMPlanetGenerator () {
    PerlinNoise *_perlinNoiseGenerator;
}

@end

@implementation SMPlanetGenerator

#pragma mark - Public interface

+ (SMPlanet *)newPlanetWithIndex:(NSInteger)planetIndex {
    return [[self planetFabric] constructPlanetWithIndex:planetIndex];
}

+ (NSArray *)newPlanets:(NSUInteger)count {
    NSMutableArray *planets = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < count; i++) {
        [planets addObject:[self newPlanetWithIndex:i]];
    }
    
    return planets;
}

#pragma mark - Planet fabric

+ (instancetype)planetFabric {
    static SMPlanetGenerator *fabric = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        fabric = [[SMPlanetGenerator alloc] init];
    });
    
    return fabric;
}

#pragma mark - Planet construction

- (SMPlanet *)constructPlanetWithIndex:(NSUInteger)planetIndex {
    SMPlanetBiome biome = [[SMBrain mainBrain]
                           planetBiomeForPlanetIndex:planetIndex];
    SMPlanetSizeCategory sizeCat = [[SMBrain mainBrain]
                                    planetSizeCategoryForPlanetIndex:planetIndex];
    SMPlanetPhysicalData physicalData = [[SMBrain mainBrain]
                                         planetPhysicalDataForPlanetWithIndex:planetIndex
                                         sizeCategory:sizeCat];
    
    SMPlanetSize planetSize = [[SMBrain mainBrain] planetSizeForPlanetIndex:planetIndex
                                                                sizeCategory:sizeCat];
    
    SMPlanetBlock **planetBlocks = [self generatePlanetBlocksForSize:planetSize];
    NSLog(@"block-test: %i", planetBlocks[2][4]);
    
    SMPlanetConstructionData constructionData = {
        .planetSize = planetSize,
        .planetBlocks = planetBlocks
    };
    
    return [SMPlanet planetWithMetatata:[[SMPlanetMetadata alloc] initWithBiome:biome sizeCategory:sizeCat physicalData:physicalData constructionData:constructionData]];
}

- (SMPlanetBlock **)generatePlanetBlocksForSize:(SMPlanetSize)planetSize {
    int maxX = planetSize.arcLengthInBlocks;
    int maxY = planetSize.maxDeepthInBlocks + planetSize.maxHeightInBlocks;
    
    SMPlanetBlock **blocks = new SMPlanetBlock* [maxX];
    
    for (int i = 0; i < maxX; ++i) {
        blocks[i] = new SMPlanetBlock[maxY];
    }
    
    _perlinNoiseGenerator = [[PerlinNoise alloc] initWithSeed:[[NSDate date] timeIntervalSince1970]];
    _perlinNoiseGenerator.interpolationMethod = kCosineInterpolation;
    _perlinNoiseGenerator.scale = maxY;
    _perlinNoiseGenerator.octaves = 2;
    _perlinNoiseGenerator.frequency = .000001;
    _perlinNoiseGenerator.smoothing = YES;
    _perlinNoiseGenerator.amplitude = 500;
    
    for (int x = 0 ; x < maxX; x++) {
        int blocksAboveGround = (int)[_perlinNoiseGenerator perlin1DValueForPoint:x];
        NSLog(@"blocks from bottom: %i", planetSize.maxDeepthInBlocks + blocksAboveGround);
        
        for (int y = 0; y < (planetSize.maxDeepthInBlocks + blocksAboveGround); y++) {
            blocks[x][y] = SMPlanetBlockGround;
        }
    }
    
    return blocks;
}

@end
