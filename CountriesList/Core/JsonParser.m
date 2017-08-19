//
//  JsonParser.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "JsonParser.h"

@implementation JsonParser

+ (instancetype)sharedInstance{
    static dispatch_once_t once;
    static id sharedInstance;
    
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

- (NSDictionary *)parseJsonData:(NSData *)jsonData{
    NSError *error = nil;
    
    NSDictionary *d = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
    
    if(error)
        NSLog(@"Parse Error: %@", error.localizedDescription);
    
    return d;
}

- (id)parseJsonString:(NSString *)string{
    NSError *error = nil;
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    id a = [NSJSONSerialization JSONObjectWithData:data
                                           options:NSJSONReadingMutableContainers
                                             error:&error];
    
    return a;
}

@end
