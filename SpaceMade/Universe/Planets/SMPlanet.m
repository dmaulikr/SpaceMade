//
//  SMPlanet.m
//  SpaceMade
//
//  Created by Vladislav Averin on 21/06/16.
//  Copyright © 2016 Vladislav Averin. All rights reserved.
//

#import "SMPlanet.h"

@interface SMPlanetMetadata () {
    
}

@end

@implementation SMPlanetMetadata

#pragma mrak - Init

- (instancetype)initWithBiome:(SMPlanetBiome)biome sizeCategory:(SMPlanetSizeCategory)sizeCategory physicalData:(SMPlanetPhysicalData)physicalData constructionData:(SMPlanetConstructionData)constructionData {
    
    if (self = [super init]) {
        self.biome = biome;
        self.sizeCategory = sizeCategory;
        self.physicalData = physicalData;
        self.constructionData = constructionData;
    }
    
    return self;
}

@end



@interface SMPlanet () {
    SMPlanetMetadata *_metadata;
}

@end

@implementation SMPlanet

#pragma mark - Planet creation

+ (instancetype)planetWithMetatata:(SMPlanetMetadata *)metadata {
    return [[self alloc] initWithMetadata:metadata];
}

#pragma mark - Init

- (instancetype)initWithMetadata:(SMPlanetMetadata *)metadata {
    if (self = [super init]) {
        _metadata = metadata;
    }
    
    return self;
}

@end
