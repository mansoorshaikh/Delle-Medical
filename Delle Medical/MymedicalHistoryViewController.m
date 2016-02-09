//
//  MymedicalHistoryViewController.m
//  Delle Medical
//
//  Created by arvind on 1/29/16.
//  Copyright © 2016 arvind. All rights reserved.
//

#import "MymedicalHistoryViewController.h"
#import "ReaderViewController.h"

@interface MymedicalHistoryViewController ()<ReaderViewControllerDelegate>

@end

@implementation MymedicalHistoryViewController
@synthesize giorgiaLbl,mymedicalHistBtn,detailsTxtView,backBtn,Logoimg,detail_view,pdgFormBtn,scanedBtn;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat ywidth = screenRect.size.width;
    CGFloat yheights = screenRect.size.height;
    CGFloat ywidthsspotlight = (screenRect.size.width*35)/100;
    CGFloat yheightsspotlight = (screenRect.size.height*20)/100;

    int yheightposition=25;
    [Logoimg removeFromSuperview];
    if (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone) {
        Logoimg=[[UIImageView alloc ]initWithFrame:CGRectMake(10,yheightposition,ywidthsspotlight,yheightsspotlight)];
        yheightposition=yheightposition+ywidthsspotlight+10;
        giorgiaLbl=[[UILabel alloc]initWithFrame:CGRectMake(ywidthsspotlight+5,30,ywidth-(ywidthsspotlight+10),45)];
        mymedicalHistBtn=[[UIButton alloc]initWithFrame:CGRectMake(ywidthsspotlight+10,85, ywidth-(ywidthsspotlight+20),40)];
        detail_view=[[UIView alloc]initWithFrame:CGRectMake(10, yheightposition, ywidth-20, yheights-(yheightposition+70))];
        pdgFormBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,10,ywidth-40,30)];
        scanedBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,50,ywidth-40,30)];
        backBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheights-50,80,30)];
        
        [giorgiaLbl setFont:[UIFont boldSystemFontOfSize: 20]];
        [mymedicalHistBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:15]];
        [pdgFormBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:14]];
        [scanedBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:14]];
        [backBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:16]];
    }else{
        Logoimg=[[UIImageView alloc ]initWithFrame:CGRectMake(10,yheightposition,ywidthsspotlight,yheightsspotlight)];
        yheightposition=yheightposition+yheightsspotlight+60;
        giorgiaLbl=[[UILabel alloc]initWithFrame:CGRectMake(ywidthsspotlight+20,30,ywidth-(ywidthsspotlight+30),80)];
        mymedicalHistBtn=[[UIButton alloc]initWithFrame:CGRectMake(ywidthsspotlight+30,130, ywidth-(ywidthsspotlight+50),70)];
        detail_view=[[UIView alloc]initWithFrame:CGRectMake(10, yheightposition, ywidth-30, yheights-(yheightposition+200))];
        pdgFormBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,10,ywidth-40,60)];
        scanedBtn=[[UIButton alloc]initWithFrame:CGRectMake(10,90,ywidth-40,60)];
        backBtn=[[UIButton alloc]initWithFrame:CGRectMake(20,yheights-70,140,50)];

        [giorgiaLbl setFont:[UIFont boldSystemFontOfSize: 35]];
        [mymedicalHistBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:30]];
        [pdgFormBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:25]];
        [scanedBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:25]];
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
   
    [mymedicalHistBtn removeFromSuperview];
  
    [mymedicalHistBtn setTitle:@"MY MEDICAL HISTORY" forState:UIControlStateNormal];
   
    [mymedicalHistBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    mymedicalHistBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    //[mymedicalHistBtn setBackgroundColor:[UIColor grayColor]];
    [mymedicalHistBtn setBackgroundImage:[UIImage imageNamed:@"textfieldbg2.png"] forState:UIControlStateNormal];
    [self.view addSubview:mymedicalHistBtn];

      self.detail_view.layer.borderWidth = 2.0f;
    detail_view.layer.borderColor = [UIColor grayColor].CGColor;
    [detail_view setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:detail_view];
    
  
    [pdgFormBtn setTitle:@"PDF FROM PATIENT DATABASE" forState:UIControlStateNormal];
    [pdgFormBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      //[pdgFormBtn addTarget:self action:@selector(handleSingleTap:) forControlEvents:UIControlEventTouchUpInside];
    pdgFormBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //[pdgFormBtn setBackgroundImage:[UIImage imageNamed:@"btnbg.png"] forState:UIControlStateNormal];
    [pdgFormBtn setBackgroundColor:[UIColor clearColor]];
    [self.detail_view addSubview:pdgFormBtn];

  
    [scanedBtn setTitle:@"NO IMAGES OR SCANNED DOCUMENTS" forState:UIControlStateNormal];
    [scanedBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  
    //[scanedBtn addTarget:self action:@selector(BackAction) forControlEvents:UIControlEventTouchUpInside];
    scanedBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //[scanedBtn setBackgroundImage:[UIImage imageNamed:@"btnbg.png"] forState:UIControlStateNormal];
    [scanedBtn setBackgroundColor:[UIColor clearColor]];
    [self.detail_view addSubview:scanedBtn];

       [backBtn setTitle:@"Back" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(BackAction) forControlEvents:UIControlEventTouchUpInside];
    backBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
  
    [backBtn setBackgroundImage:[UIImage imageNamed:@"backBtn1.png"] forState:UIControlStateNormal];
    //[backBtn setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:backBtn];
    
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    
    NSString *name = [infoDictionary objectForKey:@"CFBundleName"];
    
    NSString *version = [infoDictionary objectForKey:@"CFBundleVersion"];
    
    self.title = [[NSString alloc] initWithFormat:@"%@ v%@", name, version];
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    //singleTap.numberOfTouchesRequired = 1; singleTap.numberOfTapsRequired = 1; //singleTap.delegate = self;
    [self.view addGestureRecognizer:singleTap];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
#if (DEMO_VIEW_CONTROLLER_PUSH == TRUE)
    
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    
#endif // DEMO_VIEW_CONTROLLER_PUSH
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
#if (DEMO_VIEW_CONTROLLER_PUSH == TRUE)
    
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    
#endif // DEMO_VIEW_CONTROLLER_PUSH
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)viewDidUnload
{
#ifdef DEBUG
    NSLog(@"%s", __FUNCTION__);
#endif
    
    [super viewDidUnload];
}

- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer
{
    NSString *phrase = nil; // Document password (for unlocking most encrypted PDF files)
    
    NSArray *pdfs = [[NSBundle mainBundle] pathsForResourcesOfType:@"pdf" inDirectory:nil];
    
    //NSString *filePath = [pdfs firstObject]; assert(filePath != nil); // Path to first PDF file
    
    NSString *filePath=@"/Users/arvind/Library/Developer/CoreSimulator/Devices/CB8A560C-45D4-46EE-A8B8-0C93FFD2D074/data/Containers/Bundle/Application/8ECFB229-7BB1-4170-924B-A2C50465BE39/Reader.app/Reader.pdf";
    ReaderDocument *document = [ReaderDocument withDocumentFilePath:filePath password:phrase];
    
    if (document != nil) // Must have a valid ReaderDocument object in order to proceed with things
    {
        ReaderViewController *readerViewController = [[ReaderViewController alloc] initWithReaderDocument:document];
        
        readerViewController.delegate = self; // Set the ReaderViewController delegate to self
        
#if (DEMO_VIEW_CONTROLLER_PUSH == TRUE)
        
        [self.navigationController pushViewController:readerViewController animated:YES];
        
#else // present in a modal view controller
        
        readerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        readerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        
        [self presentViewController:readerViewController animated:YES completion:NULL];
        
#endif // DEMO_VIEW_CONTROLLER_PUSH
    }
    else // Log an error so that we know that something went wrong
    {
        NSLog(@"%s [ReaderDocument withDocumentFilePath:'%@' password:'%@'] failed.", __FUNCTION__, filePath, phrase);
    }
}

#pragma mark - ReaderViewControllerDelegate methods

- (void)dismissReaderViewController:(ReaderViewController *)viewController
{
#if (DEMO_VIEW_CONTROLLER_PUSH == TRUE)
    
    [self.navigationController popViewControllerAnimated:YES];
    
#else // dismiss the modal view controller
    
    [self dismissViewControllerAnimated:YES completion:NULL];
    
#endif // DEMO_VIEW_CONTROLLER_PUSH
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
