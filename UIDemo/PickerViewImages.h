//
//  PickerViewImages.h
//  CreateDynamicWindow
//
//  Created by Pranav Udas on 29/09/16.
//  Copyright © 2016 Pranav Udas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewImages : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>
@property (nonatomic,retain) UIPickerView *pickerViewForImage;

@property (nonatomic,retain) NSMutableArray *images;

@end
