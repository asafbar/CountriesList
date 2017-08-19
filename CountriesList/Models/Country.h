//
//  Country.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Translation.h"
#import "Currency.h"
#import "Language.h"
#import "RegionalBloc.h"

@interface Country : NSObject

@property (nonatomic, strong) NSString *alpha2Code;
@property (nonatomic, strong) NSString *alpha3Code;
@property (nonatomic, strong) NSArray *altSpellings;
@property (nonatomic) NSInteger area;
@property (nonatomic, strong) NSArray *borders;
@property (nonatomic, strong) NSArray *callingCodes;
@property (nonatomic, strong) NSString *capital;
@property (nonatomic, strong) NSArray *currencies;
@property (nonatomic, strong) NSString *demonym;
@property (nonatomic, strong) NSString *flag;
@property (nonatomic, strong) NSObject *gini;
@property (nonatomic, strong) NSArray *languages;
@property (nonatomic, strong) NSArray *latlng;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *nativeName;
@property (nonatomic, strong) NSString *numericCode;
@property (nonatomic) NSInteger population;
@property (nonatomic, strong) NSString *region;
@property (nonatomic, strong) NSArray *regionalBlocs;
@property (nonatomic, strong) NSString *subregion;
@property (nonatomic, strong) NSArray *timezones;
@property (nonatomic, strong) NSArray *topLevelDomain;
@property (nonatomic, strong) Translation *translations;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
