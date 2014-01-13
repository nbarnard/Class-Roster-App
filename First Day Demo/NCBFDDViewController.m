//
//  NCBFDDViewController.m
//  First Day Demo
//
//  Created by Nicholas Barnard on 1/13/14.
//  Copyright (c) 2014 NMFF Development. All rights reserved.
//

#import "NCBFDDViewController.h"

@interface NCBFDDViewController ()
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) NSArray *myStudentsArray;

@end

@implementation NCBFDDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *student1 = [NSString stringWithFormat:@"Brad"];
    NSString *student2 = [NSString stringWithFormat:@"Nick"];
    NSString *student3 = [NSString stringWithFormat:@"Bob"];
    NSString *student4 = @"John";


    self.myStudentsArray = [NSArray arrayWithObjects:student1, student2, student3, student4, nil];

    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;

    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.myStudentsArray.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath: indexPath];
    cell.textLabel.text = [self.myStudentsArray objectAtIndex:indexPath.row];
    return cell;

}







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
