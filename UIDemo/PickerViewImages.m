//
//  PickerViewImages.m
//  CreateDynamicWindow
//
//  Created by Pranav Udas on 29/09/16.
//  Copyright © 2016 Pranav Udas. All rights reserved.
//

#import "PickerViewImages.h"
#import "DateViewController.h"

@interface PickerViewImages ()

@end

@implementation PickerViewImages

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor orangeColor]];
    _pickerViewForImage = [[UIPickerView alloc] initWithFrame:CGRectMake(30, 50, 250, 180)];
    _pickerViewForImage.delegate = self;
    _pickerViewForImage.dataSource = self;
    
    [self.view addSubview:_pickerViewForImage];
    
    //create images array
    _images = [[NSMutableArray alloc] initWithObjects:@"1",@"3",@"4", nil];
    
    
    self.navigationItem.title = @"Third View";
    
    self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(OnBtnClick)];
}
-(void)OnBtnClick
{
    [self.navigationController pushViewController:[[DateViewController alloc] init] animated:YES];
}
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    if(component == 0)
        return 150;
    else
        return 0;
}
-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    if(component == 0)
        return 250;
    else
        return 0;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(component == 0)
    {
        return _images.count;
    }
    else
        return 0;
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[_images objectAtIndex:row] ] ];
    
    imageView.frame = CGRectMake(0, 0, 200, 120);
    
    return imageView;
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
