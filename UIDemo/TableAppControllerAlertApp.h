//
//  TableAppController.h
//  CreateDynamicWindow
//
//  Created by Pranav Udas on 02/10/16.
//  Copyright © 2016 Pranav Udas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableAppControllerAlertApp : UIViewController  <UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate>


@property (nonatomic,retain) NSMutableArray *arrayForRecords;
@property (nonatomic,retain) UITableView *tableView;
@property (nonatomic,retain) UIButton *addButton;
@property(nonatomic,retain) UIAlertView *m_alert;

@end
