//
//  CountriesApi.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "CountriesApi.h"
#import "AppDelegate.h"
#import "Country.h"


@implementation CountriesApi

#pragma mark - Network methods

+ (void)getCountriesDataOnResult:(void (^)(NSArray *countries, BOOL isSucceed))onResult{
    
    [kConfig.networkManager getUrlPath:kAllCountriesPath onResult:^(NSArray *array, BOOL isSucceed) {
        if(isSucceed){

            NSArray *countries = [CountriesApi parseCountriesWithArray:array];
            
            onResult(countries, isSucceed);
            
        }
    }];
}


+ (void)getNeighborsDataWithCode:(NSString *)neighborsCode OnResult:(void (^)(NSArray *countries, BOOL isSucceed))onResult{
    
    NSString *path = [NSString stringWithFormat:@"%@%@", kNeighborsPath, neighborsCode];
    
    [kConfig.networkManager getUrlPath:path onResult:^(NSArray *array, BOOL isSucceed) {
        
        NSArray *countries = [CountriesApi parseCountriesWithArray:array];
        
        onResult(countries, isSucceed);
        
    }];
}

#pragma mark - Parse methods


+ (NSArray *)parseCountriesWithArray:(NSArray *)array{
    NSMutableArray *countryItems = [NSMutableArray array];
    
    [array enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL *stop) {
        Country *country = [[Country alloc] initWithDictionary:dict];
        [countryItems addObject:country];
        
    }];
    
    return [NSArray arrayWithArray:countryItems];
}


@end
