//
//  LoginViewController.h
//  UIDemo
//
//  Created by Student-004 on 20/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate >
//@property (nonatomic ,retain) UIView *pCustomView;
@property (nonatomic , retain) UILabel *pUserNameLable;
@property (nonatomic,retain) UILabel *pPasswordLable;

@property (nonatomic,retain) UITextField *pUserNameTextField;
@property (nonatomic,retain) UITextField *pPasswordTextField;
@property (nonatomic,retain) UIButton *pLoginButton;
@property (nonatomic,retain) UIButton *pCancelButton;

@property (nonatomic,retain) UISegmentedControl *pSegmentControl;
@property (nonatomic,retain) UISwitch *switchControl;

@property (nonatomic,retain) UISlider *sliderControl;

@property (nonatomic,retain) UIImageView *container;
@property (nonatomic,retain) UIImage *actualImage;

@end
