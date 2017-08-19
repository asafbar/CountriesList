//
//  Translation.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "Translation.h"

#define kTranslationBr @"br"
#define kTranslationDe @"de"
#define kTranslationEs @"es"
#define kTranslationFr @"fr"
#define kTranslationIt @"it"
#define kTranslationJa @"ja"
#define kTranslationPt @"pt"

@implementation Translation

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kTranslationBr] isKindOfClass:[NSNull class]]){
        self.br = dictionary[kTranslationBr];
    }
    if(![dictionary[kTranslationDe] isKindOfClass:[NSNull class]]){
        self.de = dictionary[kTranslationDe];
    }
    if(![dictionary[kTranslationEs] isKindOfClass:[NSNull class]]){
        self.es = dictionary[kTranslationEs];
    }
    if(![dictionary[kTranslationFr] isKindOfClass:[NSNull class]]){
        self.fr = dictionary[kTranslationFr];
    }
    if(![dictionary[kTranslationIt] isKindOfClass:[NSNull class]]){
        self.it = dictionary[kTranslationIt];
    }
    if(![dictionary[kTranslationJa] isKindOfClass:[NSNull class]]){
        self.ja = dictionary[kTranslationJa];
    }
    if(![dictionary[kTranslationPt] isKindOfClass:[NSNull class]]){
        self.pt = dictionary[kTranslationPt];
    }	
    return self;
}

@end
