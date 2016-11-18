//
//  LoginViewController.m
//  UIDemo
//
//  Created by Student-004 on 20/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "LoginViewController.h"
#import "PickerViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
   /* _pCustomView = [[UIView alloc] init];
    _pCustomView.backgroundColor = [UIColor greenColor];
    _pCustomView.frame = CGRectMake(50,100,100,50);
    
    [self.view addSubview:_pCustomView];*/
    
    //adding image container
    
    _container = [[UIImageView alloc] init];
    _container.frame = [UIScreen mainScreen].bounds;
    
    _actualImage = [UIImage imageNamed:@"1.png"];
    
    _container.image = _actualImage;
    
   // [self.view addSubview:_container];
    
    _pUserNameLable = [[UILabel alloc] initWithFrame:CGRectMake(50,100, 200,50)];
    
    //adding labels
    
    [_pUserNameLable setText:@"UserName" ]; //another way
    
    [self.view addSubview:_pUserNameLable];
    
    
    _pPasswordLable = [[UILabel alloc] initWithFrame:CGRectMake(50,180, 200, 50)];
    
    _pPasswordLable.text = @"Password";
    
    [self.view addSubview:_pPasswordLable];
    
    
    //adding textfields
    
    _pUserNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(150, 110, 150, 40)];
    
    _pUserNameTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    _pUserNameTextField.returnKeyType = UIReturnKeyContinue;
    _pUserNameTextField.delegate = self; //Pass reposbility of handling event to view controller. but before that define protocol UITextFieldDelegate so ControllerView can understand the events.
    
    [self.view addSubview:_pUserNameTextField];
    
    _pPasswordTextField = [[UITextField alloc] initWithFrame:CGRectMake(150,180,150 , 40)];
    
    _pPasswordTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    _pPasswordTextField.secureTextEntry = YES;
    
    _pPasswordTextField.keyboardAppearance = UIKeyboardAppearanceDark;
    
    _pPasswordTextField.keyboardType = UIKeyboardTypeURL;
    _pPasswordTextField.returnKeyType = UIReturnKeyDone;
    
    
    _pPasswordTextField.delegate = self;//Pass reposbility of handling event to view controller. but before that define protocol UITextFieldDelegate so ControllerView can understand the events.

    
    [self.view addSubview:_pPasswordTextField];
    
    
    
    //Create Login button
    _pLoginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect]; //buttonWithType is factory button.
    
    _pLoginButton.frame = CGRectMake(150, 250, 65, 40);
    [_pLoginButton setTitle:@"Login" forState:UIControlStateNormal];
    [_pLoginButton setTitle:@"Release Kar" forState:UIControlStateHighlighted];
    [_pLoginButton setBackgroundColor:[UIColor whiteColor]];
  //  [_pLoginButton addTarget:self action:@selector(btnClickLogin) forControlEvents:UIControlEventTouchUpInside];
    [_pLoginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:_pLoginButton];
    
    
    //Create Cancel button
    
    
    _pCancelButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _pCancelButton.frame = CGRectMake(230, 250, 65, 40);
    [_pCancelButton setTitle:@"Cancel" forState:UIControlStateNormal];
    [_pCancelButton setBackgroundColor:[UIColor whiteColor]];
  //  [_pCancelButton setTintColor:[UIColor redColor]];

  //  [_pCancelButton addTarget:self action: @selector(btnClickCancel) forControlEvents:UIControlEventTouchUpInside];
    
    [_pCancelButton addTarget:self action: @selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_pCancelButton];
    
    
    //Create Segment Control
    _pSegmentControl = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"Blue",@"Grey",@"Yellow",nil]];
    
    _pSegmentControl.frame = CGRectMake(50, 300, 250, 50);
    
    [_pSegmentControl addTarget:self action:@selector(changeSegControl) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_pSegmentControl];
    
    
    //Create Switch control
    _switchControl = [[UISwitch alloc] initWithFrame:CGRectMake(50, 380, 30, 30)];
    [_switchControl addTarget:self action:@selector(switchChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_switchControl];
    
    //Create Slider control
    _sliderControl = [[UISlider alloc] initWithFrame:CGRectMake(20, 430, 250, 30)];
    [_sliderControl addTarget:self action:@selector(sliderChange) forControlEvents:UIControlEventValueChanged];
    
    _sliderControl.minimumValue = 1;
    _sliderControl.maximumValue = 50;
    
    _sliderControl.minimumTrackTintColor = [UIColor blueColor];
    _sliderControl.maximumTrackTintColor = [UIColor redColor];
    
    [_sliderControl setValue:25 animated:YES];
    
    [self.view addSubview:_sliderControl];
    
   
    
    self.navigationItem.title = @"First View";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(ROnBtnClk)];
    
    
}
-(void)ROnBtnClk
{
    PickerViewController *lvc = [[PickerViewController alloc]init];
    [self.navigationController pushViewController:lvc animated:YES];
    
}


-(void) sliderChange
{
    NSLog(@"%0.f",_sliderControl.value);
}

-(void) switchChange
{
    BOOL switchStatus =  _switchControl.on;
    enum status{OFF,ON};
    
    if(ON == switchStatus)
    {
        NSLog(@"Switch is ON");
    }
    else
    {
        NSLog(@"Switch is OFF");
    }
}
-(void) changeSegControl
{
    NSInteger index =  _pSegmentControl.selectedSegmentIndex;
    switch (index) {
        case 0:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor darkGrayColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor yellowColor];
            break;
        default:
            break;
    }
}
-(void) btnClick : (UIButton *)sender
{
    if(sender == _pLoginButton)
    {
       /* self.view.backgroundColor = [UIColor redColor];
        NSString *userName = _pUserNameTextField.text;
        NSString *password = _pPasswordTextField.text;
        
        if(YES == [userName isEqualToString:password])
        {
            NSLog(@"UserName and password are equal");
        }
        else
        {
            NSLog(@"UserName and Password are not equal");
        }*/
        PickerViewController *lvc = [[PickerViewController alloc]init];
        [self.navigationController pushViewController:lvc animated:YES];
        
        
    }
    else if(sender == _pCancelButton)
    {
        self.view.backgroundColor = [UIColor greenColor];
        //exit(0);
    }
}
/*
-(void) btnClickLogin
{
    NSLog(@"Hey you clicked on Login button. Now go to hell");
}

-(void) btnClickCancel
{
    NSLog(@"Hey you clicked on Cancel button.Now Go for lunch");
}
 */
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if(textField == _pUserNameTextField)
    {
        NSLog(@" UserName textfield Should Begin Editing");
    }
    else if(textField == _pPasswordTextField)
    {
        NSLog(@" Password textfield Should Begin Editing");
    }
    return YES;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if(textField == _pUserNameTextField)
    {
        NSLog(@" UserName textfield did Begin Editing");
    }
    else if(textField == _pPasswordTextField)
    {
        NSLog(@" Password textfield did Begin Editing");
    }
}
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    if(textField == _pUserNameTextField)
    {
        NSLog(@" UserName textfield should end Editing");
    }
    else if(textField == _pPasswordTextField)
    {
        NSLog(@" Password textfield should end Editing");
    }
    return YES;
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if(textField == _pUserNameTextField)
    {
        NSLog(@" UserName textfield did end Editing");
    }
    else if(textField == _pPasswordTextField)
    {
        NSLog(@" Password textfield did end Editing");
    }
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField == _pUserNameTextField)
    {
        [_pPasswordTextField becomeFirstResponder];
    }
    else if(textField == _pPasswordTextField)
    {
        [_pPasswordTextField resignFirstResponder];
    }
    return YES;
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
