//
//  TableViewController.m
//  UIDemo
//
//  Created by Student-004 on 29/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor orangeColor]];
    
    
    //Create table view controller
    _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    //Create city array
    _city = [[NSMutableArray alloc] initWithObjects:@"Pune",@"Nashik",@"Nagpur",@"Kolhapur",@"Bombay", nil];
    
    _color = [[NSMutableArray alloc] initWithObjects:@"Red",@"Blue",@"White", nil];
    
    self.navigationItem.title = @"Fifth View";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(OnBtnClick)];
    
    // Do any additional setup after loading the view.
}

-(void)OnBtnClick
{
   // [self.navigationController popToRootViewControllerAnimated:YES];
    
    //[self.navigationController popViewControllerAnimated:YES];
   
    NSArray *result = [self.navigationController viewControllers];
    
    [self.navigationController popToViewController:[result objectAtIndex:2] animated:TRUE];
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0)
    {
        NSString *tempCityName = [_city objectAtIndex:indexPath.row];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:tempCityName message:@"Selected" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];

        [alert show];
    }
    else
    {
        NSString *tempColorName = [_color objectAtIndex:indexPath.row];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:tempColorName message:@"Selected" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        
        [alert show];
    }
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 50;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4"]];
    return imageView;
}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UISegmentedControl *segmentControl = [[UISegmentedControl alloc] initWithItems:[[NSArray alloc] initWithObjects:@"A",@"B",@"C", nil] ];
    return segmentControl;
}
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if(section == 0)
    {
        return @"City Ends";
    }
    else
    {
        return @"Color Ends";
    }
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 0)
    {
        return @"City Header";
    }
    else
    {
        return @"Color Header";
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *tableViewCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    if(0 == indexPath.section)
    {
        tableViewCell.imageView.image = [UIImage imageNamed:@"3"];
        tableViewCell.textLabel.text = [_city objectAtIndex:indexPath.row];
        tableViewCell.detailTextLabel.text = @"City Text";
        tableViewCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    else
    {
        tableViewCell.imageView.image = [UIImage imageNamed:@"4"];
        tableViewCell.textLabel.text = [_color objectAtIndex:indexPath.row];
        tableViewCell.detailTextLabel.text = @"Color Text";
        _switchInsideTableView = [[UISwitch alloc] init];
        [_switchInsideTableView addTarget:self action:@selector(HandleSwitchEvent:) forControlEvents:UIControlEventValueChanged];
        tableViewCell.accessoryView = _switchInsideTableView;
    }
    return tableViewCell;
}
-(void)HandleSwitchEvent :(UISwitch *)switchControl
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil message:nil delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    if(switchControl.on == YES)
    {
        alert.title = @"Switch is ON";
    }
    else
    {
        alert.title = @"Switch is OFF";
    }
    [alert show];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
    {
        return _city.count;
    }
    else
    {
        return _color.count;
    }
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
