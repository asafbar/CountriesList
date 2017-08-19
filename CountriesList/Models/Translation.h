//
//  Translation.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Translation : NSObject

@property (nonatomic, strong) NSString *br;
@property (nonatomic, strong) NSString *de;
@property (nonatomic, strong) NSString *es;
@property (nonatomic, strong) NSString *fr;
@property (nonatomic, strong) NSString *it;
@property (nonatomic, strong) NSString *ja;
@property (nonatomic, strong) NSString *pt;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
