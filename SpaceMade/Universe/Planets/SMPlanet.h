//
//  SMPlanet.h
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMAstronomicalObject.h"

typedef enum : NSUInteger {
    SMPlanetBiomeUnknown = 0,
    SMPlanetBiomeDesert,
    SMPlanetBiomeGreen,
    SMPlanetBiomeSnow
} SMPlanetBiome;

typedef enum : short {
    SMPlanetBlockNone = 0,
    SMPlanetBlockGround
} SMPlanetBlock;

typedef enum : NSUInteger {
    SMPlanetSizeCategoryUnknown = 0,
    SMPlanetSizeCategoryDwarf,
    SMPlanetSizeCategoryRegular,
    SMPlanetSizeCategoryGiant
} SMPlanetSizeCategory;

typedef struct {
    int arcLengthInBlocks;
    int maxHeightInBlocks;
    int maxDeepthInBlocks;
} SMPlanetSize;

typedef struct {
    double gravity;
} SMPlanetPhysicalData;

typedef struct {
    SMPlanetSize planetSize;
    SMPlanetBlock **planetBlocks;
} SMPlanetConstructionData;

/**
 Container with all the generated data about planet
 */
@interface SMPlanetMetadata : NSObject

@property (nonatomic, assign) SMPlanetBiome biome;
@property (nonatomic, assign) SMPlanetSizeCategory sizeCategory;
@property (nonatomic, assign) SMPlanetPhysicalData physicalData;
@property (nonatomic, assign) SMPlanetConstructionData constructionData;

- (instancetype)initWithBiome:(SMPlanetBiome)biome sizeCategory:(SMPlanetSizeCategory)sizeCategory physicalData:(SMPlanetPhysicalData)physicalData constructionData:(SMPlanetConstructionData)constructionData;

@end

/**
 Describes Planet — astronomical object, part of Star System.
 */
@interface SMPlanet : SMAstronomicalObject

+ (instancetype)planetWithMetatata:(SMPlanetMetadata *)metadata;

@end
