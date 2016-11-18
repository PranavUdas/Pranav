//
//  PickerViewController.m
//  CreateDynamicWindow
//
//  Created by Pranav Udas on 28/09/16.
//  Copyright © 2016 Pranav Udas. All rights reserved.
//

#import "PickerViewController.h"
#import "PickerViewImages.h"
@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor orangeColor]];
    _pickerControl = [[UIPickerView alloc]initWithFrame:CGRectMake(10, 50, 250, 80)];
    _pickerControl.delegate = self;
    _pickerControl.dataSource = self;
    
    [self.view addSubview:_pickerControl];
    
    //adding label
    _label = [[UILabel alloc] initWithFrame:CGRectMake(10, 160, 260, 30)];
    [self.view addSubview:_label];
    
    //adding values to city array
    _city = [[NSMutableArray alloc] initWithObjects:@"Pune",@"Mumbai",@"Nashik",@"Kolhapur", nil];
    
    //adding values to color array
    _color = [[NSMutableArray alloc] initWithObjects:@"Blue",@"Red",@"Yellow", nil];
    
    self.navigationItem.title = @"Second View";
    
    self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(OnBtnClick)];
    
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSInteger C1rowIndex = [pickerView selectedRowInComponent:0];
    NSInteger C2rowIndex = [pickerView selectedRowInComponent:1];
    
    _label.text = [[NSString alloc] initWithFormat:@"%@  %@",[_city objectAtIndex:C1rowIndex],[_color objectAtIndex:C2rowIndex]];
    
    switch(C2rowIndex)
    {
        case 0:
            [self.view setBackgroundColor:[UIColor blueColor]];
            break;
        case 1:
            [self.view setBackgroundColor:[UIColor redColor]];
            break;
        case 2:
            [self.view setBackgroundColor:[UIColor yellowColor]];
            break;
    }
    
    
}
-(void)OnBtnClick
{
    [self.navigationController pushViewController:[[PickerViewImages alloc] init] animated:YES];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    if(pickerView == _pickerControl)
    {
        return 2;
    }
    else
        return 0;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(pickerView == _pickerControl)
    {
        if(component == 0)
        {
            return _city.count;
        }
        else if(component == 1)
        {
            return _color.count;
        }
        else
        {
            return 0;
        }
    }
    else
        return 0;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
   if(component == 0)
   {
       return [_city objectAtIndex:row];
   }
   else if(component == 1)
   {
       return [_color objectAtIndex:row];
   }
   else
   {
       return @"Error";
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
