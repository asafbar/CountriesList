//
//  RegionalBloc.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "RegionalBloc.h"

#define kRegionalBlocAcronym @"acronym"
#define kRegionalBlocName @"name"
#define kRegionalBlocOtherAcronyms @"otherAcronyms"
#define kRegionalBlocOtherNames @"otherNames"

@implementation RegionalBloc

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kRegionalBlocAcronym] isKindOfClass:[NSNull class]]){
        self.acronym = dictionary[kRegionalBlocAcronym];
    }
    if(![dictionary[kRegionalBlocName] isKindOfClass:[NSNull class]]){
        self.name = dictionary[kRegionalBlocName];
    }
    if(![dictionary[kRegionalBlocOtherAcronyms] isKindOfClass:[NSNull class]]){
        self.otherAcronyms = dictionary[kRegionalBlocOtherAcronyms];
    }
    if(![dictionary[kRegionalBlocOtherNames] isKindOfClass:[NSNull class]]){
        self.otherNames = dictionary[kRegionalBlocOtherNames];
    }	
    return self;
}

@end
