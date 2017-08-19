//
//  Config.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Network.h"
#import "DataHolder.h"


#define kBaseURL @"https://restcountries.eu/rest/v2/"
#define kAllCountriesPath @"all"
#define kNeighborsPath @"alpha?codes="

@interface Config : NSObject

@property (nonatomic) BOOL isDebug;
@property(nonatomic, strong) Network *networkManager;
@property(nonatomic, strong) DataHolder *dataHolder;

@end
