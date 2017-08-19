//
//  CountriesInteractor.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "CountriesInteractor.h"
#import "CountriesApi.h"
#import "AppDelegate.h"

@implementation CountriesInteractor

- (void)getAllCountriesDataOnFinish:(void (^)(void))onFinish{
    [CountriesApi getCountriesDataOnResult:^(NSArray *countries, BOOL isSucceed) {
        
        kConfig.dataHolder.countries = [NSMutableArray arrayWithArray:countries];
        
        onFinish();
    }];
}

- (void)getNeighborsByCode:(NSString *)neighbors OnFinish:(void (^)(NSArray *countries))onFinish{
    
    [CountriesApi getNeighborsDataWithCode:neighbors OnResult:^(NSArray *countries, BOOL isSucceed) {
        
        if(isSucceed)
            onFinish(countries);
        
    }];
    
}

@end
