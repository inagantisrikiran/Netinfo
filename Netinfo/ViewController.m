//
//  ViewController.m
//  Netinfo
//
//  Created by SRIKIRAN INAGANTI on 7/14/16.
//  Copyright © 2016 SRIKIRAN INAGANTI. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor whiteColor];
    FBSDKLoginButton *loginbutton=[[FBSDKLoginButton alloc ]init];
    loginbutton.center=self.view.center;
    [self.view addSubview:loginbutton];
    
    UIButton * signIn = [[UIButton alloc]initWithFrame:CGRectMake(10, 250, self.view.frame.size.width-20, 40)];
    signIn.backgroundColor = [UIColor orangeColor];
        
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end