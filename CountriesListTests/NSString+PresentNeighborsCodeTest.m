//
//  NSString+PresentNeighborsCodeTest.m
//  CountriesList
//
//  Created by Asaf Berko on 02/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+PresentNeighborsCode.h"

@interface NSString_PresentNeighborsCodeTest : XCTestCase

@end

@implementation NSString_PresentNeighborsCodeTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testEmptyArray{
    // Empty array
    NSArray *ar = [NSArray array];
    
    NSString *str = [NSString neighborsCodeFromArray:ar];
    
    XCTAssertEqualObjects(str, @"");
}

- (void)testOneCode{
    NSArray *code = [NSArray arrayWithObjects:@"AR", nil];
    
    NSString *str = [NSString neighborsCodeFromArray:code];
    
    XCTAssertEqualObjects(str, @"AR");
}

- (void)testTwoCodes{
    NSArray *codes = [NSArray arrayWithObjects:@"AR", @"BR", nil];
    
    NSString *str = [NSString neighborsCodeFromArray:codes];
    
    XCTAssertEqualObjects(str, @"AR;BR");
}

- (void)testSeveralCodes{
    NSArray *codes = [NSArray arrayWithObjects:@"AR", @"BR", @"GFR", @"IL",@"TGF",@"FG", nil];
    
    NSString *str = [NSString neighborsCodeFromArray:codes];
    
    XCTAssertEqualObjects(str, @"AR;BR;GFR;IL;TGF;FG");
}

- (void)testSemicolonOneCode{
    NSArray *code = [NSArray arrayWithObjects:@"AR", nil];
    
    NSString *str = [NSString neighborsCodeFromArray:code];
    
    XCTAssertNotEqualObjects(str, @";AR");
}

- (void)testSemicolonTwoCodes{
    NSArray *codes = [NSArray arrayWithObjects:@"AR", @"BR", nil];
    
    NSString *str = [NSString neighborsCodeFromArray:codes];
    
    XCTAssertNotEqualObjects(str, @"AR;BR;");
}

- (void)testNoDuplicateFirstCode{
    NSArray *codes = [NSArray arrayWithObjects:@"AR", @"BR", nil];
    
    NSString *str = [NSString neighborsCodeFromArray:codes];
    
    XCTAssertNotEqualObjects(str, @"AR;AR;BR");
}


@end
