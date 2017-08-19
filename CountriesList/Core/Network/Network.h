//
//  Network.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Network : NSObject


- (void)getUrlPath:(NSString *)path onResult:(void (^)(id, BOOL isSucceed))onResult;

@end
