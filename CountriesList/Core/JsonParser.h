//
//  JsonParser.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonParser : NSObject

+ (instancetype)sharedInstance;
- (NSDictionary *)parseJsonData:(NSData *)jsonData;
- (id)parseJsonString:(NSString *)string;


@end
