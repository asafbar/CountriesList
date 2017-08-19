//
//  Config.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "Config.h"

@implementation Config

- (instancetype)init{
    self = [super init];
    if(self) {
        self.isDebug = NO;
        self.networkManager = [Network new];
        self.dataHolder = [DataHolder new];
    }
    return self;
}

@end
