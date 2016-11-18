//
//  DateViewController.m
//  UIDemo
//
//  Created by Student-004 on 29/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "DateViewController.h"
#import "TableViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    _datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 30, 360, 200)];
    _datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    [_datePicker addTarget:self action:@selector(ChangeDateAndTime) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_datePicker];
    
    //add label control
    _label = [[UILabel alloc]initWithFrame:CGRectMake(20, 250, 300, 50)];
    [self.view addSubview:_label];
    
    self.navigationItem.title = @"Fourth View";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(OnBtnClick)];
}
-(void) OnBtnClick
{
    [self.navigationController pushViewController:[[TableViewController alloc] init] animated:YES];
}
- (void) ChangeDateAndTime
{
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    
    [format setDateFormat:@"dd/MM/YYYY hh:mm:ss:a"];
    NSString *result = [format stringFromDate:[_datePicker date]];
    
    NSLog(@"%@",result);
    _label.text = result;
    
    /*
    NSLog(@"%@",_datePicker.timeZone);
    NSLog(@"%@",_datePicker.date);
    */
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
