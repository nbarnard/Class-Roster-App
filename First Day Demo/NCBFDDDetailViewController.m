//
//  NCBFDDDetailViewController.m
//  First Day Demo
//
//  Created by Nicholas Barnard on 1/13/14.
//  Copyright (c) 2014 NMFF Development. All rights reserved.
//

#import "NCBFDDDetailViewController.h"

@interface NCBFDDDetailViewController ()
@property (weak, nonatomic) IBOutlet UITableView *myDetailView;

@end

@implementation NCBFDDDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    self.myDetailView.delegate = self;
    self.myDetailView.dataSource = self;

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *) tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *onlyCell = [tableView dequeueReusableCellWithIdentifier:@"myOnlyCell"forIndexPath:indexPath];

    onlyCell.textLabel.text = self.studentName;

    return onlyCell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.sectionName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
