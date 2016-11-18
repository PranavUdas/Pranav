//
//  TableAppController.m
//  CreateDynamicWindow
//
//  Created by Pranav Udas on 02/10/16.
//  Copyright © 2016 Pranav Udas. All rights reserved.
//

#import "TableAppControllerAlertApp.h"

@interface TableAppControllerAlertApp ()

@end

@implementation TableAppControllerAlertApp

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor cyanColor]];
    
    
    //add TableView control
   // _tableView = [[UITableView alloc] ini initWithFrame:CGRectMake(12,  130, 250, 300)
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(12, 130, 300, 350) style:UITableViewStylePlain];
    //initWithFrame:
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    //add array for records
    _arrayForRecords = [[NSMutableArray alloc] init];
    
    //add add button
    _addButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_addButton setTintColor:[UIColor blueColor]];
    [_addButton setBackgroundColor:[UIColor whiteColor]];
    _addButton.frame  = CGRectMake(200, 90, 100, 30);
    [_addButton setTitle:@"Add" forState:UIControlStateNormal];
    [_addButton addTarget:self action:@selector(CalculateTable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_addButton];
    
    
   _m_alert = [[UIAlertView alloc]initWithTitle:@"AlertView Demo" message:@"Description Test Message" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    
    _m_alert.alertViewStyle=UIAlertViewStylePlainTextInput;
    _m_alert.delegate = self;
    
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSInteger OKbuttonIndex =  [_m_alert firstOtherButtonIndex];
    UITextField *ptrTextField = [_m_alert textFieldAtIndex:0];
    
    if(OKbuttonIndex == buttonIndex)
    {
        
        NSString *temp = [[NSString alloc] initWithFormat:@"%@",ptrTextField.text];
    
        [_arrayForRecords addObject:temp];
        [_tableView reloadData];
        ptrTextField.text = @"";
    }
    else
    {
         ptrTextField.text = @"";
    }
}
-(void)CalculateTable
{
    [_m_alert show];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    
    cell.textLabel.text = _arrayForRecords[indexPath.row];
    
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrayForRecords.count;
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
