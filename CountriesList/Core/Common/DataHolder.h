//
//  DataHolder.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"

@interface DataHolder : NSObject

@property(nonatomic,strong) NSArray <Country *> *countries;

@end
