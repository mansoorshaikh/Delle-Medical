//
//  SendMessagesViewController.m
//  Delle Medical
//
//  Created by arvind on 1/29/16.
//  Copyright © 2016 arvind. All rights reserved.
//

#import "SendMessagesViewController.h"

@interface SendMessagesViewController ()

@end

@implementation SendMessagesViewController
@synthesize giorgiaLbl,sendMsgBtn,detailsTxtView,backBtn,Logoimg,msgSendBtn,detail_view;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat ywidth = screenRect.size.width;
    CGFloat yheights = screenRect.size.height;

    int yheightposition=25;

    [Logoimg removeFromSuperview];
    CGFloat ywidthsspotlight = (screenRect.size.width*35)/100;
    CGFloat yheightsspotlight = (screenRect.size.height*20)/100;
    
    if (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone) {
        Logoimg=[[UIImageView alloc ]initWithFrame:CGRectMake(10,yheightposition,ywidthsspotlight,yheightsspotlight)];
        yheightposition=yheightposition+yheightsspotlight+10;
        giorgiaLbl=[[UILabel alloc]initWithFrame:CGRectMake(ywidthsspotlight+5,30,ywidth-(ywidthsspotlight+10),45)];
        sendMsgBtn=[[UIButton alloc]initWithFrame:CGRectMake(ywidthsspotlight+10,85,ywidth-(ywidthsspotlight+20),40)];
        detail_view=[[UIView alloc]initWithFrame:CGRectMake(10, yheightposition, ywidth-20, yheights-(yheightposition+100))];
        detailsTxtView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0,self.detail_view.bounds.size.width, self.detail_view.bounds.size.height)];
        msgSendBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,yheights-90,ywidth-20,30)];
        backBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,yheights-50,80,30)];
        
        [giorgiaLbl setFont:[UIFont boldSystemFontOfSize: 20]];
        [sendMsgBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:11]];
        detailsTxtView.font = [UIFont boldSystemFontOfSize:20.0f];
        [msgSendBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:24]];
        [backBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:16]];

    }else{
        Logoimg=[[UIImageView alloc ]initWithFrame:CGRectMake(10,yheightposition,ywidthsspotlight,yheightsspotlight)];
        yheightposition=yheightposition+yheightsspotlight+60;
        giorgiaLbl=[[UILabel alloc]initWithFrame:CGRectMake(ywidthsspotlight+20,30,ywidth-(ywidthsspotlight+30),80)];
        sendMsgBtn=[[UIButton alloc]initWithFrame:CGRectMake(ywidthsspotlight+30,130,ywidth-(ywidthsspotlight+50),70)];
        detail_view=[[UIView alloc]initWithFrame:CGRectMake(10, yheightposition, ywidth-20, yheights-(yheightposition+200))];
        detailsTxtView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0,self.detail_view.bounds.size.width, self.detail_view.bounds.size.height)];
        msgSendBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,yheights-150,ywidth-20,60)];
        backBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,yheights-70,140,50)];
        
        [giorgiaLbl setFont:[UIFont boldSystemFontOfSize: 35]];
        [sendMsgBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:25]];
        detailsTxtView.font = [UIFont boldSystemFontOfSize:35.0f];
        [msgSendBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:30]];
        [backBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:25]];

    }
        
    Logoimg.tintColor=[UIColor whiteColor];
    [Logoimg setImage:[UIImage imageNamed:@"delle_logo_200.png"]];
    //Logoimg.layer.shadowOpacity = 0.2;
    Logoimg.alpha=1.0;
    [self.view addSubview:Logoimg];
  
 
    [giorgiaLbl removeFromSuperview];
      giorgiaLbl.text=@"GIORGIA VALENTINI";
    [[giorgiaLbl layer] setCornerRadius:5.0f];
    [[giorgiaLbl layer] setMasksToBounds:YES];
    giorgiaLbl.textAlignment = UITextAlignmentCenter;
    giorgiaLbl.textColor=[UIColor whiteColor];
    [giorgiaLbl setBackgroundColor:[UIColor darkGrayColor]];
    [self.view addSubview:giorgiaLbl];
      
   
    [sendMsgBtn setTitle:@"SEND MESSAGE TO THE CENTER" forState:UIControlStateNormal];
  
    [sendMsgBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    sendMsgBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [sendMsgBtn setBackgroundImage:[UIImage imageNamed:@"textfieldbg2.png"] forState:UIControlStateNormal];
    //[sendMsgBtn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:sendMsgBtn];

  
    self.detail_view.layer.borderWidth = 1.0f;
    self.detail_view.layer.cornerRadius = 8;
    [detail_view setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:detail_view];

  
    detailsTxtView.text = @"PATIENT MESSAGE TO BE SEND TO CENTER SOFTWARE";
    //fhfdescriptionView.userInteractionEnabled=NO;
    detailsTxtView.layer.borderColor=[[UIColor blackColor]CGColor];
    detailsTxtView.layer.borderWidth=2.0;
    detailsTxtView.layer.cornerRadius=8;
    detailsTxtView.scrollEnabled = YES;
    self.detailsTxtView.delegate = self;
  
    detailsTxtView.backgroundColor=[UIColor clearColor];
    [self.detail_view addSubview:detailsTxtView];

       [msgSendBtn setTitle:@"SEND MESSAGE" forState:UIControlStateNormal];
    [msgSendBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  
    //[msgSendBtn addTarget:self action:@selector(BackAction) forControlEvents:UIControlEventTouchUpInside];
    msgSendBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [msgSendBtn setBackgroundImage:[UIImage imageNamed:@"button_send.png"] forState:UIControlStateNormal];
    //[backBtn setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:msgSendBtn];


 
    [backBtn setTitle:@"Back" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(BackAction) forControlEvents:UIControlEventTouchUpInside];
    backBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
       [backBtn setBackgroundImage:[UIImage imageNamed:@"backBtn1.png"] forState:UIControlStateNormal];
    //[backBtn setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:backBtn];

}
- (BOOL) textViewShouldBeginEditing:(UITextView *)textView
{
     if ([detailsTxtView.text isEqualToString:@"PATIENT MESSAGE TO BE SEND TO CENTER SOFTWARE"]) {
    detailsTxtView.text = @"";
    detailsTxtView.textColor = [UIColor blackColor];
     }
    return YES;
}
-(void)viewDidAppear:(BOOL)animated{
    
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

-(void) textViewDidChange:(UITextView *)textView
{
    if(detailsTxtView.text.length == 0){
        detailsTxtView.textColor = [UIColor lightGrayColor];
        detailsTxtView.text = @"PATIENT MESSAGE TO BE SEND TO CENTER SOFTWARE";
        [detailsTxtView resignFirstResponder];
    }
}
- (void)textViewDidEndEditing:(UITextView *)textView
{
    if ([detailsTxtView.text isEqualToString:@""]) {
        detailsTxtView.text = @"PATIENT MESSAGE TO BE SEND TO CENTER SOFTWARE";
        detailsTxtView.textColor = [UIColor lightGrayColor]; //optional
    }
    [detailsTxtView resignFirstResponder];
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
