//
//  NSString+PresentNeighborsCode.m
//  CountriesList
//
//  Created by Asaf Berko on 02/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "NSString+PresentNeighborsCode.h"

@implementation NSString (PresentNeighborsCode)

+ (NSString *)neighborsCodeFromArray:(NSArray *)array{
    
    if(array.count == 0) return @"";
    
    NSMutableArray *cArr = [NSMutableArray arrayWithArray:array];
    
    __block NSString *s;
    
    s = [cArr firstObject];
    [cArr removeObject:[cArr firstObject]];
    
    [cArr enumerateObjectsUsingBlock:^(NSString *str, NSUInteger idx, BOOL *stop) {
        s = [s stringByAppendingString:[NSString stringWithFormat:@";%@", str]];
    }];
    
    return s;
}

@end
