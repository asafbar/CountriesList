//
//  CountriesInteractor.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CountriesInteractor : NSObject

- (void)getAllCountriesDataOnFinish:(void (^)(void))onFinish;
- (void)getNeighborsByCode:(NSString *)neighbors OnFinish:(void (^)(NSArray *countries))onFinish;

@end
