//
//  Country.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "Country.h"

#define kCountryAlpha2Code @"alpha2Code"
#define kCountryAlpha3Code @"alpha3Code"
#define kCountryAltSpellings @"altSpellings"
#define kCountryArea @"area"
#define kCountryBorders @"borders"
#define kCountryCallingCodes @"callingCodes"
#define kCountryCapital @"capital"
#define kCountryCurrencies @"currencies"
#define kCountryDemonym @"demonym"
#define kCountryFlag @"flag"
#define kCountryGini @"gini"
#define kCountryLanguages @"languages"
#define kCountryLatlng @"latlng"
#define kCountryName @"name"
#define kCountryNativeName @"nativeName"
#define kCountryNumericCode @"numericCode"
#define kCountryPopulation @"population"
#define kCountryRegion @"region"
#define kCountryRegionalBlocs @"regionalBlocs"
#define kCountrySubregion @"subregion"
#define kCountryTimezones @"timezones"
#define kCountryTopLevelDomain @"topLevelDomain"
#define kCountryTranslations @"translations"

@implementation Country

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    if(self){
        if(![dictionary[kCountryAlpha2Code] isKindOfClass:[NSNull class]]){
            self.alpha2Code = dictionary[kCountryAlpha2Code];
        }
        if(![dictionary[kCountryAlpha3Code] isKindOfClass:[NSNull class]]){
            self.alpha3Code = dictionary[kCountryAlpha3Code];
        }
        if(![dictionary[kCountryAltSpellings] isKindOfClass:[NSNull class]]){
            self.altSpellings = dictionary[kCountryAltSpellings];
        }
        if(![dictionary[kCountryArea] isKindOfClass:[NSNull class]]){
            self.area = [dictionary[kCountryArea] integerValue];
        }
        
        if(![dictionary[kCountryBorders] isKindOfClass:[NSNull class]]){
            self.borders = dictionary[kCountryBorders];
        }
        if(![dictionary[kCountryCallingCodes] isKindOfClass:[NSNull class]]){
            self.callingCodes = dictionary[kCountryCallingCodes];
        }
        if(![dictionary[kCountryCapital] isKindOfClass:[NSNull class]]){
            self.capital = dictionary[kCountryCapital];
        }
   
        if(dictionary[kCountryCurrencies] != nil && [dictionary[kCountryCurrencies] isKindOfClass:[NSArray class]]){
            NSArray *currDict = dictionary[kCountryCurrencies];
            NSMutableArray *currenciesItems = [NSMutableArray array];
            
            [currDict enumerateObjectsUsingBlock:^(NSDictionary *dic, NSUInteger idx, BOOL *stop) {
                Currency *cur = [[Currency alloc]initWithDictionary:dic];
                [currenciesItems addObject:cur];
            }];
            
            self.currencies = [NSArray arrayWithArray:currenciesItems];
        }
        
        
        
        if(![dictionary[kCountryDemonym] isKindOfClass:[NSNull class]]){
            self.demonym = dictionary[kCountryDemonym];
        }
        if(![dictionary[kCountryFlag] isKindOfClass:[NSNull class]]){
            self.flag = dictionary[kCountryFlag];
        }
        if(![dictionary[kCountryGini] isKindOfClass:[NSNull class]]){
            self.gini = dictionary[kCountryGini];
        }

        if(dictionary[kCountryLanguages] != nil && [dictionary[kCountryLanguages] isKindOfClass:[NSArray class]]){
            
            NSArray *langDict = dictionary[kCountryLanguages];
            NSMutableArray *languagesItems = [NSMutableArray array];
            
            [langDict enumerateObjectsUsingBlock:^(NSDictionary *dic, NSUInteger idx, BOOL *stop) {
                Language *languagesItem = [[Language alloc] initWithDictionary:dic];
                [languagesItems addObject:languagesItem];
            }];
            
            self.languages = [NSArray arrayWithArray:languagesItems];
        }
        
        
        if(![dictionary[kCountryLatlng] isKindOfClass:[NSNull class]]){
            self.latlng = dictionary[kCountryLatlng];
        }
        if(![dictionary[kCountryName] isKindOfClass:[NSNull class]]){
            self.name = dictionary[kCountryName];
        }
        if(![dictionary[kCountryNativeName] isKindOfClass:[NSNull class]]){
            self.nativeName = dictionary[kCountryNativeName];
        }
        if(![dictionary[kCountryNumericCode] isKindOfClass:[NSNull class]]){
            self.numericCode = dictionary[kCountryNumericCode];
        }
        if(![dictionary[kCountryPopulation] isKindOfClass:[NSNull class]]){
            self.population = [dictionary[kCountryPopulation] integerValue];
        }
        
        if(![dictionary[kCountryRegion] isKindOfClass:[NSNull class]]){
            self.region = dictionary[kCountryRegion];
        }
        
        if(dictionary[kCountryRegionalBlocs] != nil && [dictionary[kCountryRegionalBlocs] isKindOfClass:[NSArray class]]){
            
            NSArray *regDict = dictionary[kCountryRegionalBlocs];
            NSMutableArray *regionalBlocsItems = [NSMutableArray array];
            
            [regDict enumerateObjectsUsingBlock:^(NSDictionary *dic, NSUInteger idx, BOOL *stop) {
                RegionalBloc * regionalBlocsItem = [[RegionalBloc alloc] initWithDictionary:dic];
                [regionalBlocsItems addObject:regionalBlocsItem];
            }];
            
            self.regionalBlocs = [NSArray arrayWithArray:regionalBlocsItems];
        }
        
        
        if(![dictionary[kCountrySubregion] isKindOfClass:[NSNull class]]){
            self.subregion = dictionary[kCountrySubregion];
        }
        if(![dictionary[kCountryTimezones] isKindOfClass:[NSNull class]]){
            self.timezones = dictionary[kCountryTimezones];
        }	
        if(![dictionary[kCountryTopLevelDomain] isKindOfClass:[NSNull class]]){
            self.topLevelDomain = dictionary[kCountryTopLevelDomain];
        }	
        if(![dictionary[kCountryTranslations] isKindOfClass:[NSNull class]]){
            self.translations = [[Translation alloc] initWithDictionary:dictionary[kCountryTranslations]];
        }
        
    }
    return self;
}

@end
