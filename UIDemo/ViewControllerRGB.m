//
//  ViewControllerRGB.m
//  UIDemo
//
//  Created by Student-004 on 27/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewControllerRGB.h"

@interface ViewControllerRGB ()

@end

@implementation ViewControllerRGB

- (void)viewDidLoad {
    [super viewDidLoad];

    //adding view
    _pView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 150, 150)];
    [_pView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:_pView];
    
    //adding SliderR
    _pSliderR = [[UISlider alloc] initWithFrame:CGRectMake(20, 180, 150, 30)];
    _pSliderR.minimumValue = 0;
    _pSliderR.maximumValue = 255;
    [_pSliderR addTarget:self action:@selector(SliderChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_pSliderR];
    
    //adding SliderG
    _pSliderG = [[UISlider alloc] initWithFrame:CGRectMake(20, 240, 150, 30)];
    _pSliderG.minimumValue = 0 ;
    _pSliderG.maximumValue = 255;
    
    [_pSliderG addTarget:self action:@selector(SliderChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_pSliderG];

    
    //adding SliderB
    _pSliderB = [[UISlider alloc] initWithFrame:CGRectMake(20, 300, 150, 30)];
    _pSliderB.minimumValue = 0;
    _pSliderB.maximumValue = 255;
    
    [_pSliderB addTarget:self action:@selector(SliderChange:) forControlEvents:UIControlEventValueChanged];
   
    [self.view addSubview:_pSliderB];
    
    
}

-(void)SliderChange :(UISlider *)pSlider
{
    float fred = _pSliderR.value;
    float fgreen = _pSliderG.value;
    float fblue = _pSliderB.value;
    
    [_pView setBackgroundColor:[UIColor colorWithRed:fred/255 green:fgreen/255 blue:fblue/255 alpha:1.0]];

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
