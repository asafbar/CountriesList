//
//  Network.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "Network.h"
#import "AppDelegate.h"
#import "JsonParser.h"

@implementation Network

- (void)getUrlPath:(NSString *)path onResult:(void (^)(id, BOOL isSucceed))onResult
{

    //https://restcountries.eu/rest/v2/all
    
    NSString *urlString = [NSString stringWithFormat:@"%@%@", kBaseURL, path];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {

        NSDictionary *dict = [[JsonParser sharedInstance]parseJsonData:data];
        
        if(dict) {
            onResult(dict, YES);
        }else{
            // Handle error here
        }
        
    }];
    
    [dataTask resume];
    
}

@end
