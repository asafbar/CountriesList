//
//  CountriesMainVC.h
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountriesMainVC : UIViewController <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, UISearchControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end
