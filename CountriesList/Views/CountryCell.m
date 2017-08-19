//
//  CountryCell.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "CountryCell.h"

@interface CountryCell()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *nativeNameLabel;

@end

@implementation CountryCell

#pragma mark - setters

- (void)setName:(NSString *)name{
    _name= name;
    self.nameLabel.text = name;
}

- (void)setNativeName:(NSString *)nativeName{
    _nativeName = nativeName;
    self.nativeNameLabel.text = nativeName;
}

@end
