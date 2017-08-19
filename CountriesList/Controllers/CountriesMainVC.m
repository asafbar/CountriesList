//
//  CountriesMainVC.m
//  CountriesList
//
//  Created by Asaf Berko on 01/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "CountriesMainVC.h"
#import "CountryCell.h"
#import "AppDelegate.h"
#import "Country.h"
#import "NeighborsVC.h"
#import "CountriesInteractor.h"


@interface CountriesMainVC ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@end

@implementation CountriesMainVC

static NSString *cellIdentifier = @"Country Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    // Setup before run
    [self setup];

    // Request all countries data from server
    [self loadAllData];
    
}

- (void)setup{
    // setup table view
    [self.tableView registerNib:[UINib nibWithNibName:@"CountryCell" bundle:nil] forCellReuseIdentifier:cellIdentifier];
    
    [self.tableView setSeparatorColor:[UIColor clearColor]];
    
    self.activityIndicator.hidesWhenStopped = YES;
    
}

- (void)loadAllData{
    CountriesInteractor *interactor = [CountriesInteractor new];
    
    [interactor getAllCountriesDataOnFinish:^{
        
        // Update UI
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
            [self isActivityIndicatorAppear:NO];
        });
 
    }];
}

- (void)isActivityIndicatorAppear:(BOOL)value{
    value ? [self.activityIndicator startAnimating] : [self.activityIndicator stopAnimating];
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return kConfig.dataHolder.countries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CountryCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    Country *country = [kConfig.dataHolder.countries objectAtIndex:indexPath.row];
    
    // use cell setters
    cell.name = country.name;
    cell.nativeName = country.nativeName;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    return UITableViewRowAnimationAutomatic;
    return 85;
}


// Open selected cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Country *country = [kConfig.dataHolder.countries objectAtIndex:indexPath.row];
    
    NeighborsVC *neighborsVC = [self.storyboard instantiateViewControllerWithIdentifier:@"Neighbors VC"];
    
    neighborsVC.country = country;
    
    [self.navigationController pushViewController:neighborsVC animated:YES];
    
}

@end
