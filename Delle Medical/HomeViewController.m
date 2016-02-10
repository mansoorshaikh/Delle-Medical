//
//  HomeViewController.m
//  Delle Medical
//
//  Created by arvind on 1/29/16.
//  Copyright © 2016 arvind. All rights reserved.
//

#import "HomeViewController.h"
#import "MymedicalHistoryViewController.h"
#import "CenterNotificationViewController.h"
#import "SendMessagesViewController.h"
#import "LoginViewController.h"
#import "RESwitch.h"
@interface HomeViewController ()

@end

@implementation HomeViewController
@synthesize mymedicalHistBtn,centernotificaionBtn,sendMsgBtn,logoutBtn,giorgiaLbl,pushNotificationLbl,msgSwitch,Logoimg,giorgiaBtn,pushNotificationBtn,lockLblImg;
- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat yheights = screenRect.size.width;
    CGFloat ywidthsspotlight = (screenRect.size.width*35)/100;
    CGFloat yheightsspotlight = (screenRect.size.height*20)/100;

    int yheightposition=25;
    [Logoimg removeFromSuperview];
    [giorgiaBtn removeFromSuperview];
    [giorgiaLbl removeFromSuperview];
    [mymedicalHistBtn removeFromSuperview];
    [centernotificaionBtn removeFromSuperview];
    [sendMsgBtn removeFromSuperview];
    [pushNotificationLbl removeFromSuperview];
    [pushNotificationBtn removeFromSuperview];
    [msgSwitch removeFromSuperview];
    [logoutBtn removeFromSuperview];

    RESwitch *switchView;
    if (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone) {
        Logoimg=[[UIImageView alloc ]initWithFrame:CGRectMake(10,yheightposition,ywidthsspotlight,yheightsspotlight)];
        yheightposition=yheightposition+yheightsspotlight+20;
        giorgiaBtn=[[UIButton alloc]initWithFrame:CGRectMake(0,yheightposition, yheights,40)];
        yheightposition=yheightposition+60;
        mymedicalHistBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheightposition, yheights-70,40)];
        lockLblImg=[[UILabel alloc]initWithFrame:CGRectMake(yheights-47,yheightposition-5,45,45)];
        yheightposition=yheightposition+70;
        centernotificaionBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheightposition, yheights-40,40)];
        yheightposition=yheightposition+70;
        sendMsgBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheightposition, yheights-40,40)];
        yheightposition=yheightposition+70;
        pushNotificationLbl=[[UILabel alloc]initWithFrame:CGRectMake(0,yheightposition, 220,40)];
        pushNotificationBtn=[[UIButton alloc]initWithFrame:CGRectMake(0,yheightposition, 220,40)];
        msgSwitch=[[UISwitch alloc]initWithFrame:CGRectMake(yheights-80,yheightposition,40,40)];
         switchView= [[RESwitch alloc] initWithFrame:CGRectMake(yheights-90,yheightposition+5, 77, 28)];
        yheightposition=yheightposition+70;
        
        logoutBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheightposition, 100,40)];
        
        [giorgiaBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:24]];
        [mymedicalHistBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
        
        lockLblImg.font = [UIFont fontWithName:@"FontAwesome" size:30];
        [centernotificaionBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
        [sendMsgBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
        [pushNotificationBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:20]];
        [switchView setFont:[UIFont boldSystemFontOfSize:14]];
        logoutBtn.titleLabel.font = [UIFont boldSystemFontOfSize: 16];
        [switchView setBackgroundImage:[UIImage imageNamed:@"Switch_Background"]];
        [switchView setKnobImage:[UIImage imageNamed:@"Switch_Knob"]];

    }else{
        Logoimg=[[UIImageView alloc ]initWithFrame:CGRectMake(10,yheightposition,ywidthsspotlight,yheightsspotlight)];
        yheightposition=yheightposition+yheightsspotlight+40;
        giorgiaBtn=[[UIButton alloc]initWithFrame:CGRectMake(0,yheightposition, yheights,80)];
        yheightposition=yheightposition+150;
        mymedicalHistBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheightposition, yheights-100,70)];
        lockLblImg=[[UILabel alloc]initWithFrame:CGRectMake(yheights-77,yheightposition-5,65,65)];
        yheightposition=yheightposition+130;
        centernotificaionBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheightposition, yheights-40,70)];
        yheightposition=yheightposition+130;
        sendMsgBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheightposition, yheights-40,70)];
        yheightposition=yheightposition+150;
        pushNotificationLbl=[[UILabel alloc]initWithFrame:CGRectMake(0,yheightposition, 450,70)];
        pushNotificationBtn=[[UIButton alloc]initWithFrame:CGRectMake(0,yheightposition, 450,70)];
        msgSwitch=[[UISwitch alloc]initWithFrame:CGRectMake(yheights-80,yheightposition,40,70)];
        switchView= [[RESwitch alloc] initWithFrame:CGRectMake(yheights-220,yheightposition+10,150, 45)];
        yheightposition=yheightposition+100;
        logoutBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheightposition, 200,60)];
        
        [giorgiaBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:35]];
        [mymedicalHistBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:30]];
        lockLblImg.font = [UIFont fontWithName:@"FontAwesome" size:50];
        [centernotificaionBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:30]];
        [sendMsgBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:30]];
        [pushNotificationBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:30]];
        [switchView setFont:[UIFont boldSystemFontOfSize:25]];
        logoutBtn.titleLabel.font = [UIFont boldSystemFontOfSize: 30];
        [switchView setBackgroundImage:[UIImage imageNamed:@"switch_back_3.png"]];
        [switchView setKnobImage:[UIImage imageNamed:@"Switch_Knob@3x.png"]];

    }
    Logoimg.tintColor=[UIColor whiteColor];
    [Logoimg setImage:[UIImage imageNamed:@"delle_logo_200.png"]];
    //Logoimg.layer.shadowOpacity = 0.2;
    Logoimg.alpha=1.0;
    [self.view addSubview:Logoimg];
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSString * name=[[NSString alloc] initWithString:[NSString stringWithFormat:@"%@ %@",[prefs objectForKey:@"firstname"],[prefs objectForKey:@"lastname"]]];
    
    [giorgiaBtn setTitle:name forState:UIControlStateNormal];
    [giorgiaBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //[giorgiaBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:22]];im
    //[giorgiaBtn setBackgroundImage:[UIImage imageNamed:@"bgbutton_title_2.png"] forState:UIControlStateNormal];
    //[giorgiaBtn addTarget:self action:@selector(myMedicalHistory) forControlEvents:UIControlEventTouchUpInside];
    giorgiaBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [giorgiaBtn setBackgroundColor:[UIColor darkGrayColor]];
    [self.view addSubview:giorgiaBtn];
  

        [mymedicalHistBtn setTitle:@"MY MEDICAL HISTORY" forState:UIControlStateNormal];
    [mymedicalHistBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [mymedicalHistBtn setBackgroundImage:[UIImage imageNamed:@"textfieldbg.PNG"] forState:UIControlStateNormal];
      [mymedicalHistBtn addTarget:self action:@selector(myMedicalHistory) forControlEvents:UIControlEventTouchUpInside];
    mymedicalHistBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    //[mymedicalHistBtn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:mymedicalHistBtn];
    
  
    lockLblImg.textColor=[UIColor blackColor ];
    lockLblImg.layer.shadowOpacity = 0.5;
    //check the condition user is subscriber or not...
    lockLblImg.text = @"\uf13e"; //unlock icon image
    //lockLblImg.text = @"\uf023";  //lock icon image
    lockLblImg.alpha=0.5;
    [self.view addSubview:lockLblImg];

 

  
 
    [centernotificaionBtn setTitle:@"CENTER NOTIFICATIONS" forState:UIControlStateNormal];
    [centernotificaionBtn addTarget:self action:@selector(centerNotification) forControlEvents:UIControlEventTouchUpInside];
    [centernotificaionBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
   
    [centernotificaionBtn setBackgroundImage:[UIImage imageNamed:@"textfieldbg.PNG"] forState:UIControlStateNormal];
    centernotificaionBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    //[centernotificaionBtn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:centernotificaionBtn];

   
    
  
    [sendMsgBtn setTitle:@"SEND MESSAGE" forState:UIControlStateNormal];
    [sendMsgBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [sendMsgBtn setBackgroundImage:[UIImage imageNamed:@"textfieldbg.PNG"] forState:UIControlStateNormal];
   
    [sendMsgBtn addTarget:self action:@selector(sendMessage) forControlEvents:UIControlEventTouchUpInside];
    sendMsgBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    //[sendMsgBtn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:sendMsgBtn];

    //[self.view addSubview:sendMsgBtn];


   
  
    [pushNotificationLbl removeFromSuperview];
    [pushNotificationLbl setFont:[UIFont boldSystemFontOfSize: 18]];
    pushNotificationLbl.text=@" Push notification";
    pushNotificationLbl.textAlignment = UITextAlignmentLeft;
    pushNotificationLbl.textColor=[UIColor whiteColor];
    //[pushNotificationLbl setBackgroundColor:[UIColor grayColor]];
    pushNotificationLbl.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"textfieldbg1.PNG"]];
    //[self.view addSubview:pushNotificationLbl];.
    
       
    [pushNotificationBtn setTitle:@" Push notification" forState:UIControlStateNormal];
    [pushNotificationBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [pushNotificationBtn setBackgroundImage:[UIImage imageNamed:@"textfieldbg.PNG"] forState:UIControlStateNormal];
   
    //[pushNotificationBtn addTarget:self action:@selector(sendMessage) forControlEvents:UIControlEventTouchUpInside];
    pushNotificationBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    //[sendMsgBtn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:pushNotificationBtn];

    //yheightposition=yheightposition+70;

         [msgSwitch setOnTintColor: [UIColor blackColor]];
    //[self.view addSubview:msgSwitch];

  
    switchView.on = NO;
    [switchView setOverlayImage:nil];
    [switchView setHighlightedKnobImage:nil];
    [switchView setCornerRadius:0];
    [switchView setKnobOffset:CGSizeMake(0, 0)];
    [switchView setTextShadowOffset:CGSizeMake(0, 0)];
       [switchView setTextOffset:CGSizeMake(0, 2) forLabel:RESwitchLabelOn];
    [switchView setTextOffset:CGSizeMake(3, 2) forLabel:RESwitchLabelOff];
    [switchView setTextColor:[UIColor whiteColor] forLabel:RESwitchLabelOn];
    [switchView setTextColor:[UIColor whiteColor] forLabel:RESwitchLabelOff];
    switchView.layer.cornerRadius = 4;
    //switchView.layer.borderColor = [UIColor colorWithRed:224/255.0 green:36/255.0 blue:24/255.0 alpha:1].CGColor;
    switchView.layer.borderWidth = 2;
    switchView.layer.masksToBounds = YES;
    [switchView addTarget:self action:@selector(switchViewChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:switchView];


       [logoutBtn setTitle:@"LogOUT" forState:UIControlStateNormal];
    [logoutBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    logoutBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [logoutBtn addTarget:self action:@selector(LogOutAction) forControlEvents:UIControlEventTouchUpInside];
    //[logoutBtn setBackgroundColor:[UIColor redColor]];
    [logoutBtn setBackgroundImage:[UIImage imageNamed:@"logout.PNG"] forState:UIControlStateNormal];
  
    [self.view addSubview:logoutBtn];

    // Do any additional setup after loading the view from its nib.
    
}
- (void)switchViewChanged:(RESwitch *)switchView
{
    NSLog(@"Value: %i", switchView.on);
}

-(void)LogOutAction
{
    LoginViewController *login;
        login=[[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    [self.navigationController pushViewController:login animated:NO];

    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs removeObjectForKey:@"loggedin"];
    [prefs synchronize];
}

-(IBAction)myMedicalHistory{
    MymedicalHistoryViewController *mymedical=[[MymedicalHistoryViewController alloc] initWithNibName:@"MymedicalHistoryViewController" bundle:nil];
    [self.navigationController pushViewController:mymedical animated:YES];

}
-(IBAction)centerNotification{
    CenterNotificationViewController *center=[[CenterNotificationViewController alloc] initWithNibName:@"CenterNotificationViewController" bundle:nil];
    [self.navigationController pushViewController:center animated:YES];

}
-(IBAction)sendMessage{
    SendMessagesViewController *sendmsg=[[SendMessagesViewController alloc] initWithNibName:@"SendMessagesViewController" bundle:nil];
    [self.navigationController pushViewController:sendmsg animated:YES];

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
