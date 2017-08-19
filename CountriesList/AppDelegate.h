//
//  AppDelegate.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Config.h"

#define kConfig [AppDelegate config]

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(nonatomic, strong) Config *config;

+ (id)delegate;
+ (Config *)config;

@end

