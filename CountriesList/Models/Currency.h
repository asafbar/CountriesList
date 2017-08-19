//
//  Currency.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Currency : NSObject

@property (nonatomic, strong) NSString *code;
@property (nonatomic, strong) NSObject *name;
@property (nonatomic, strong) NSObject *symbol;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
