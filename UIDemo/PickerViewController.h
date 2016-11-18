//
//  PickerViewController.h
//  CreateDynamicWindow
//
//  Created by Pranav Udas on 28/09/16.
//  Copyright © 2016 Pranav Udas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>

@property (nonatomic,retain) UIPickerView *pickerControl;
@property (nonatomic,retain) NSMutableArray *city,*color;
@property (nonatomic,retain) UILabel *label;

@end
