//
//  NCBFDDDetailViewController.h
//  First Day Demo
//
//  Created by Nicholas Barnard on 1/13/14.
//  Copyright (c) 2014 NMFF Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NCBFDDDetailViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) NSString *studentName;
@property (strong, nonatomic) NSString *sectionName;

@end
