//
//  NeighborsVC.m
//  CountriesList
//
//  Created by Asaf Berko on 02/08/2017.
//  Copyright © 2017 BarTech Apps. All rights reserved.
//

#import "NeighborsVC.h"
#import "CountriesInteractor.h"
#import "NSString+PresentNeighborsCode.h"
#import "CountryCell.h"
#import "AppDelegate.h"
#import "NoNeighborsView.h"

@interface NeighborsVC () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic, strong) CountriesInteractor *interactor;
@property(nonatomic, strong) NSArray *countries;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@end

@implementation NeighborsVC

static NSString *cellIdentifier = @"Country Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
    self.interactor = [CountriesInteractor new];
    
    [self loadData];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // Set country title
    self.titleLabel.text = self.country.name;
}

- (void)setup{
    [self.tableView registerNib:[UINib nibWithNibName:@"CountryCell" bundle:nil] forCellReuseIdentifier:cellIdentifier];
    [self.tableView setSeparatorColor:[UIColor clearColor]];
}

- (void)loadData{

    // Country without neighbors, will show empty table
    if(self.country.borders.count == 0){
        
        [self addNoNeighborsView];
        
        return;
    }
    
    // Create neighbors code from array (using category)
    NSString *neighborsCode = [NSString neighborsCodeFromArray:self.country.borders];
    
    [self.interactor getNeighborsByCode:neighborsCode OnFinish:^(NSArray *countries) {
        
        self.countries = countries;
        
        // Update UI
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
        
    }];
}

// When there is no Neighbors, empty view appear instead
- (void)addNoNeighborsView{
    NoNeighborsView *empty = [NoNeighborsView new];
    empty.frame = self.tableView.bounds;
    self.tableView.contentOffset = CGPointMake(0, 0);
    [self.tableView addSubview:empty];
    self.tableView.scrollEnabled = NO;
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.countries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CountryCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    Country *country = [self.countries objectAtIndex:indexPath.row];
    
    // use cell setters
    cell.name = country.name;
    cell.nativeName = country.nativeName;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //    return UITableViewRowAnimationAutomatic;
    return 85;
}

@end
