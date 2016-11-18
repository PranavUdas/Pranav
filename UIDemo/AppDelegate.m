//
//  AppDelegate.m
//  UIDemo
//
//  Created by Student-004 on 20/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
#import "ViewControllerRGB.h"
#import "PickerViewController.h"
#import "PickerViewImages.h"
#import "DateViewController.h"
#import "TableViewController.h"
#import "TableAppController.h"
#import "TableAppControllerUsingArray.h"
#import "TableAppControllerAlertApp.h"
#import "MyTableTableViewController.h"
#import "DragDropXIBViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    _window = [[UIWindow alloc] init];
    _window.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
    
    LoginViewController *lvc = [[LoginViewController alloc] init];
    //1st view
    /*ViewControllerRGB *lvc = [[ViewControllerRGB alloc] init];*/
    
    //This is to update git repository
    //This is branch 1
    //2nd view
    /*PickerViewController *lvc = [[PickerViewController alloc] init];*/
    
    
    //3rd view
    
  //  PickerViewImages *lvc = [[PickerViewImages alloc] init];
   
    
    
    //4th view
   /* DateViewController *lvc = [[DateViewController alloc] init];*/
    
    
    //5th view
    /*TableViewController *lvc = [[TableViewController alloc]init];*/
    
    /*TableAppController *lvc = [[TableAppController alloc]init];*/
    
    /*TableAppControllerUsingArray *lvc = [[TableAppControllerUsingArray alloc] init];*/
    
   /* TableAppControllerAlertApp *lvc = [[TableAppControllerAlertApp alloc] init];*/
    
   /* MyTableTableViewController *lvc = [[MyTableTableViewController alloc] initWithStyle:UITableViewStylePlain];*/
    
   /* DragDropXIBViewController *lvc = [[DragDropXIBViewController alloc] init];*/
    
    
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:lvc];
    navigation.navigationBar.barTintColor = [UIColor magentaColor];
    
    self.window.rootViewController = navigation;
   // _window.frame = [UIScreen mainScreen].bounds;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
