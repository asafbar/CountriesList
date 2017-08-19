//
//  Currency.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "Currency.h"

#define kCurrencyCode @"code"
#define kCurrencyName @"name"
#define kCurrencySymbol @"symbol"

@implementation Currency

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kCurrencyCode] isKindOfClass:[NSNull class]]){
        self.code = dictionary[kCurrencyCode];
    }
    if(![dictionary[kCurrencyName] isKindOfClass:[NSNull class]]){
        self.name = dictionary[kCurrencyName];
    }
    if(![dictionary[kCurrencySymbol] isKindOfClass:[NSNull class]]){
        self.symbol = dictionary[kCurrencySymbol];
    }	
    return self;
}

@end
