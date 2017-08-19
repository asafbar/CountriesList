//
//  Language.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Language : NSObject

@property (nonatomic, strong) NSString *iso6391;
@property (nonatomic, strong) NSString *iso6392;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *nativeName;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
