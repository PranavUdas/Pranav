//
//  TableViewController.h
//  UIDemo
//
//  Created by Student-004 on 29/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,retain) NSMutableArray *city,*color;
@property (nonatomic,retain) UITableView *tableView;
@property (nonatomic,retain) UISwitch *switchInsideTableView;
@end
