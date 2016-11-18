//
//  DragDropXIBViewController.h
//  UIDemo
//
//  Created by Student-004 on 04/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DragDropXIBViewController : UIViewController <UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *btnClickMe;
- (IBAction)OnBtnClickMe:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UITableView *tableViewControl;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewControl;

@end
