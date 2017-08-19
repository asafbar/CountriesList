//
//  CountriesApi.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CountriesApi : NSObject

+ (void)getCountriesDataOnResult:(void (^)(NSArray *countries, BOOL isSucceed))onResult;
+ (void)getNeighborsDataWithCode:(NSString *)neighbors OnResult:(void (^)(NSArray *countries, BOOL isSucceed))onResult;

@end
