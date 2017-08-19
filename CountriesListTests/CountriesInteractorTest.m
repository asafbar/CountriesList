//
//  CountriesInteractorTest.m
//  CountriesList
//
//  Created by Asaf Berko on 02/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CountriesInteractor.h"

@interface CountriesInteractorTest : XCTestCase
@property(nonatomic, strong) CountriesInteractor *interactor;
@end

@implementation CountriesInteractorTest

- (void)setUp {
    [super setUp];
   
    self.interactor = [CountriesInteractor new];
}

- (void)testPerformanceInteractor{
    
    [self measureBlock:^{
       [self.interactor getAllCountriesDataOnFinish:^{
           // Measure time to get all countries data
       }];
    }];
}

- (void)testPerformanceNeighbors{
    //EGY;JOR;LBN;SYR
    [self measureBlock:^{
        [self.interactor getNeighborsByCode:@"EGY;JOR;LBN;SYR" OnFinish:^(NSArray *countries) {
            XCTAssertNotNil(countries);
        }];
    }];
}


@end
