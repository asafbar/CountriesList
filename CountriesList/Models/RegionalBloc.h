//
//  RegionalBloc.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RegionalBloc : NSObject

@property (nonatomic, strong) NSString *acronym;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *otherAcronyms;
@property (nonatomic, strong) NSArray *otherNames;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
