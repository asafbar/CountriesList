//
//  NoNeighborsView.m
//  CountriesList
//
//  Created by Asaf Berko on 02/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "NoNeighborsView.h"

@implementation NoNeighborsView

- (instancetype)init{
    self = [super init];
    if(self) {
        self = [[[NSBundle mainBundle]loadNibNamed:@"NoNeighborsView" owner:self options:nil]firstObject];
        
    }
    return self;
}

@end
