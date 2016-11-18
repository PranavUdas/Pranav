//
//  TableAppController.h
//  CreateDynamicWindow
//
//  Created by Pranav Udas on 02/10/16.
//  Copyright © 2016 Pranav Udas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableAppController : UIViewController  <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,retain) UILabel *lf1,*lf2;

@property (nonatomic,retain) UITextField *tf1,*tf2;

@property (nonatomic,retain) UIButton *calCulate;

@property (nonatomic,retain) UITableView *tableView;
@property NSInteger number1;
@property NSInteger number2;



@end
