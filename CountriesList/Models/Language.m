//
//  Language.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "Language.h"

#define kLanguageIso6391 @"iso639_1"
#define kLanguageIso6392 @"iso639_2"
#define kLanguageName @"name"
#define kLanguageNativeName @"nativeName"

@implementation Language

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kLanguageIso6391] isKindOfClass:[NSNull class]]){
        self.iso6391 = dictionary[kLanguageIso6391];
    }
    if(![dictionary[kLanguageIso6392] isKindOfClass:[NSNull class]]){
        self.iso6392 = dictionary[kLanguageIso6392];
    }
    if(![dictionary[kLanguageName] isKindOfClass:[NSNull class]]){
        self.name = dictionary[kLanguageName];
    }
    if(![dictionary[kLanguageNativeName] isKindOfClass:[NSNull class]]){
        self.nativeName = dictionary[kLanguageNativeName];
    }	
    return self;
}

@end
