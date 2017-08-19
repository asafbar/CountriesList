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
@property(nonatomic, strong) NSArray *searchResults;
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
    
    if(!(tableView == self.tableView)){
        return self.searchResults.count;
    }
    
    
    return kConfig.dataHolder.countries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CountryCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    Country *country;
    if(!(tableView == self.tableView)){
       country  = [self.searchResults objectAtIndex:indexPath.row];
    }else{
        country  = [kConfig.dataHolder.countries objectAtIndex:indexPath.row];
    }
    
    
    
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
    
    Country *country;
    if(!(tableView == self.tableView)){
         country = [self.searchResults objectAtIndex:indexPath.row];
    }else{
        country  = [kConfig.dataHolder.countries objectAtIndex:indexPath.row];
    }
    
    
    
    
    NeighborsVC *neighborsVC = [self.storyboard instantiateViewControllerWithIdentifier:@"Neighbors VC"];
    
    neighborsVC.country = country;
    
    [self.navigationController pushViewController:neighborsVC animated:YES];
    
}

#pragma mark - Search on table

//- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption
- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar{
    
    NSLog(@"%@",searchBar.text);
    
    return YES;
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    NSLog(@"%@",searchBar.text);
    
    [self filterContentForSearchText:searchBar.text];
}


- (void)filterContentForSearchText:(NSString*)searchText
{

    
    NSPredicate *resultPredicate = [NSPredicate
                                    predicateWithFormat:@"name CONTAINS %@",
                                    searchText];
    
    self.searchResults = [kConfig.dataHolder.countries filteredArrayUsingPredicate:resultPredicate];
    
    [self.tableView reloadData];
}

@end
