//
//  CenterNotificationViewController.m
//  Delle Medical
//
//  Created by arvind on 1/29/16.
//  Copyright © 2016 arvind. All rights reserved.
//

#import "CenterNotificationViewController.h"
#import "UIColor+Expanded.h"
@interface CenterNotificationViewController ()

@end

@implementation CenterNotificationViewController
@synthesize giorgiaLbl,centernotificaionBtn,detailsTxtView,backBtn,Logoimg,detail_view,notificationlistBtn,appointmentBtn;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat ywidth = screenRect.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    CGFloat ywidthsspotlight = (screenRect.size.width*35)/100;
    CGFloat yheightsspotlight = (screenRect.size.height*20)/100;

    CGFloat yheights = screenRect.size.height;
    if(height>=480 && height<568){
    }else if(height>=568 && height<600){
    }
    int yheightposition=25;

    [Logoimg removeFromSuperview];
    if (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone) {
        Logoimg=[[UIImageView alloc ]initWithFrame:CGRectMake(10,yheightposition,ywidthsspotlight,yheightsspotlight)];
        yheightposition=yheightposition+yheightsspotlight+10;
        
        giorgiaLbl=[[UILabel alloc]initWithFrame:CGRectMake(ywidthsspotlight+5,30,ywidth-(ywidthsspotlight+10),45)];
                centernotificaionBtn=[[UIButton alloc]initWithFrame:CGRectMake(ywidthsspotlight+10,85,ywidth-(ywidthsspotlight+20),40)];
        detail_view=[[UIView alloc]initWithFrame:CGRectMake(10, yheightposition, ywidth-20, yheights-(yheightposition+70))];
        notificationlistBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,10,ywidth-40,30)];
        appointmentBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,50,ywidth-40,30)];
        backBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,yheights-50,80,30)];
        
        [giorgiaLbl setFont:[UIFont boldSystemFontOfSize: 20]];
        [centernotificaionBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:14]];
        [notificationlistBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:16]];
        [appointmentBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:16]];
        [backBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:16]];

    }else{
        Logoimg=[[UIImageView alloc ]initWithFrame:CGRectMake(10,yheightposition,ywidthsspotlight,yheightsspotlight)];
        yheightposition=yheightposition+yheightsspotlight+60;
        
        giorgiaLbl=[[UILabel alloc]initWithFrame:CGRectMake(ywidthsspotlight+20,30,ywidth-(ywidthsspotlight+30),80)];
        centernotificaionBtn=[[UIButton alloc]initWithFrame:CGRectMake(ywidthsspotlight+30,130, ywidth-(ywidthsspotlight+50),70)];
        detail_view=[[UIView alloc]initWithFrame:CGRectMake(10, yheightposition, ywidth-30, yheights-(yheightposition+200))];
        notificationlistBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,10,ywidth-40,60)];
        appointmentBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,50,ywidth-40,60)];
        backBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheights-70,140,50)];
        
        [giorgiaLbl setFont:[UIFont boldSystemFontOfSize: 35]];
        [centernotificaionBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:30]];
        [notificationlistBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:25]];
        [appointmentBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:25]];
        [backBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:25]];

    }
      Logoimg.tintColor=[UIColor whiteColor];
    [Logoimg setImage:[UIImage imageNamed:@"delle_logo_200.png"]];
    //Logoimg.layer.shadowOpacity = 0.2;
    Logoimg.alpha=1.0;
    [self.view addSubview:Logoimg];
   
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSString * names=[[NSString alloc] initWithString:[NSString stringWithFormat:@"%@ %@",[prefs objectForKey:@"firstname"],[prefs objectForKey:@"lastname"]]];

    [giorgiaLbl removeFromSuperview];
       giorgiaLbl.text=names;
    [[giorgiaLbl layer] setCornerRadius:5.0f];
    [[giorgiaLbl layer] setMasksToBounds:YES];
    giorgiaLbl.textAlignment = UITextAlignmentCenter;
    giorgiaLbl.textColor=[UIColor whiteColor];
    [giorgiaLbl setBackgroundColor:[UIColor darkGrayColor]];
    [self.view addSubview:giorgiaLbl];
 
    [centernotificaionBtn setTitle:@"CENTER NOTIFICATIONS" forState:UIControlStateNormal];
    [centernotificaionBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [centernotificaionBtn setBackgroundImage:[UIImage imageNamed:@"textfieldbg.PNG"] forState:UIControlStateNormal];
      centernotificaionBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    //[centernotificaionBtn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:centernotificaionBtn];
    
    self.detail_view.layer.borderWidth = 2.5f;
    detail_view.layer.cornerRadius = 7;
    detail_view.layer.masksToBounds = YES;
    [detail_view setBackgroundColor:[UIColor clearColor]];
   // detail_view.layer.borderColor = [UIColor colorWithString:@"#969596"].CGColor;
    detail_view.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [self.view addSubview:detail_view];
  
    [notificationlistBtn setTitle:@"NOTIFICATIONS LIST" forState:UIControlStateNormal];
    [notificationlistBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      //[notificationlistBtn addTarget:self action:@selector(BackAction) forControlEvents:UIControlEventTouchUpInside];
    notificationlistBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //[notificationlistBtn setBackgroundImage:[UIImage imageNamed:@"btnbg.png"] forState:UIControlStateNormal];
    [notificationlistBtn setBackgroundColor:[UIColor clearColor]];
    [self.detail_view addSubview:notificationlistBtn];
   
    [appointmentBtn setTitle:@"APPOINTMENT/THERAPY/EVENTS" forState:UIControlStateNormal];
    [appointmentBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  
    //[appointmentBtn addTarget:self action:@selector(BackAction) forControlEvents:UIControlEventTouchUpInside];
    appointmentBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //[appointmentBtn setBackgroundImage:[UIImage imageNamed:@"btnbg.png"] forState:UIControlStateNormal];
    [appointmentBtn setBackgroundColor:[UIColor clearColor]];
    [self.detail_view addSubview:appointmentBtn];
   
    [backBtn setTitle:@"Back" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(BackAction) forControlEvents:UIControlEventTouchUpInside];
    backBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
       [backBtn setBackgroundImage:[UIImage imageNamed:@"backBtn2.png"] forState:UIControlStateNormal];
    //[backBtn setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:backBtn];

}
-(IBAction)BackAction{
    [self.navigationController popViewControllerAnimated:NO];
    
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
