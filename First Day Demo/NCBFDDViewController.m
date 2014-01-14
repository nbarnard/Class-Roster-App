//
//  NCBFDDViewController.m
//  First Day Demo
//
//  Created by Nicholas Barnard on 1/13/14.
//  Copyright (c) 2014 NMFF Development. All rights reserved.
//

#import "NCBFDDViewController.h"
#import "NCBFDDDetailViewController.h"

@interface NCBFDDViewController ()
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) NSArray *myStudentsArray;
@property (strong, nonatomic) NSArray *myInstructorsArray;

@end

@implementation NCBFDDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.myStudentsArray = [NSArray arrayWithObjects:@"Nicholas Barnard", @"Zuri Biringer", @"Chad Colby", @"Spencer Fornaciari", @"Raghav Haran", @"Timothy Hise", @"Ivan Lesko", @"Richard Lichkus", @"Bennett Lin", @"Christopher Meehan", @"Matt Remick", @"Andrew Rodgers", @"Jeff Schwab", @"Steven Stevenson", @"Yair Szarf", nil];

    self.myInstructorsArray = [NSArray arrayWithObjects:@"John Clem", @"Brad Johnson", nil];

    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;

    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSInteger sectionCount = 0;

    switch (section) {
        case 0:
            sectionCount = self.myStudentsArray.count;
            break;
        case 1:
            sectionCount = self.myInstructorsArray.count;
            break;
        default:
            sectionCount = 0;
            break;
    }
    return sectionCount;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath: indexPath];

    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [self.myStudentsArray objectAtIndex:indexPath.row];
            break;
        case 1:
            cell.textLabel.text = [self.myInstructorsArray objectAtIndex:indexPath.row];
            break;
    }
            return cell;

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

    NSMutableString *headerName = [[NSMutableString alloc] init];
    switch (section) {
        case 0:
            [headerName setString: @"Students"];
            break;
        case 1:
            [headerName setString: @"Instructors"];
            break;
        default:
            [headerName setString: @""];
            break;
    }

    return [NSString stringWithString:headerName];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    UITableViewCell *tapped = sender;

    NSString *individual = tapped.textLabel.text;

    if ([segue.destinationViewController isKindOfClass:[NCBFDDDetailViewController class]]) {
        NCBFDDDetailViewController *destination = (NCBFDDDetailViewController *)segue.destinationViewController;
        destination.studentName = individual;

        if ([self.myInstructorsArray containsObject: individual]){
            destination.sectionName = @"Instructor";
        } else {
            destination.sectionName = @"Student";
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
