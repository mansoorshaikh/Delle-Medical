//
//  LoginViewController.m
//  Delle Medical
//
//  Created by arvind on 1/28/16.
//  Copyright © 2016 arvind. All rights reserved.
//

#import "LoginViewController.h"
#import "HomeViewController.h"
#import "Reachability.h"
@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize userNameText,userPasswordText,Logoimg,activityIndicator,appDelegate;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    appDelegate=(AppDelegate *)[[UIApplication sharedApplication] delegate];
    [activityIndicator stopAnimating];

    self.navigationController.navigationBarHidden=YES;

    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat ywidth = screenRect.size.width;
    CGFloat yheight = (screenRect.size.height*60)/100;
    CGFloat yheightss =screenRect.size.height/2;
    CGFloat yheights = yheightss/2;

    [Logoimg removeFromSuperview];
    Logoimg=[[UIImageView alloc ]initWithFrame:CGRectMake(10,25,ywidth-20,yheight)];
    Logoimg.tintColor=[UIColor whiteColor];
    [Logoimg setImage:[UIImage imageNamed:@"delle_logo_500.png"]];
    //Logoimg.layer.shadowOpacity = 0.2;
    Logoimg.alpha=1.0;
    [self.view addSubview:Logoimg];
    
    [userNameText removeFromSuperview];
    [userPasswordText removeFromSuperview];
    if (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone) {
        userNameText=[[UITextField alloc]initWithFrame:CGRectMake(2, yheightss+yheights-60, ywidth-4, 50)];
        userPasswordText=[[UITextField alloc]initWithFrame:CGRectMake(2,  yheightss+yheights+10, ywidth-4, 50)];
        [userNameText setFont:[UIFont systemFontOfSize:25]];
        [userPasswordText setFont:[UIFont systemFontOfSize:25]];
    }else{
        userNameText=[[UITextField alloc]initWithFrame:CGRectMake(2, yheightss+yheights-70, ywidth-4, 70)];
        userPasswordText=[[UITextField alloc]initWithFrame:CGRectMake(2,  yheightss+yheights+20, ywidth-4, 70)];
        [userNameText setFont:[UIFont systemFontOfSize:35]];
        [userPasswordText setFont:[UIFont systemFontOfSize:35]];
    }

    userNameText.delegate = self;
    userNameText.returnKeyType = UIReturnKeyNext;
    userNameText.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    userNameText.textAlignment = UITextAlignmentCenter;
    userNameText.textColor=[UIColor whiteColor];
    //[userNameText setBackgroundColor:[UIColor grayColor]];
    UIColor *color = [UIColor whiteColor];
    userNameText.background=[UIImage imageNamed:@"textfieldbg.PNG"];
    //color = [color colorWithAlphaComponent:0.2f];
    userNameText.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"USERNAME" attributes:@{NSForegroundColorAttributeName: color}];

    [self.view addSubview:userNameText];
    
   
    userPasswordText.delegate = self;
    userPasswordText.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"PASSWORD" attributes:@{NSForegroundColorAttributeName: color}];
    userPasswordText.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    userPasswordText.textAlignment = UITextAlignmentCenter;
    userPasswordText.returnKeyType = UIReturnKeyDone;
    userPasswordText.textColor=[UIColor whiteColor];
   
    userPasswordText.background=[UIImage imageNamed:@"textfieldbg.PNG"];
    //[userPasswordText setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:userPasswordText];
}
- (void) threadStartAnimating:(id)data {
    [activityIndicator startAnimating];
    activityIndicator.center = CGPointMake(self.view.frame.size.width / 2.0, self.view.frame.size.height / 2.0);
    [self.view addSubview: activityIndicator];
}

-(IBAction)loginAction{
    Reachability *myNetwork = [Reachability reachabilityWithHostname:@"google.com"];
    NetworkStatus myStatus = [myNetwork currentReachabilityStatus];
    if(myStatus == NotReachable)
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Delle Medical" message:@"No internet connection available!!!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        
    }else{
        if ([userNameText.text isEqualToString:@""] || [userPasswordText.text isEqualToString:@""]){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Delle Medical"
                                                            message:@"Please fill in username and password."
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
        }else{
            [NSThread detachNewThreadSelector:@selector(threadStartAnimating:) toTarget:self withObject:nil];
            
            NSString* string2 = [appDelegate.deviceToken stringByReplacingOccurrencesOfString:@" " withString:@""];
            NSURL *url;
            NSMutableString *httpBodyString;
            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
            httpBodyString=[[NSMutableString alloc] initWithString:[NSString stringWithFormat:@"username=%@&password=%@&device_id=%@&device_type=iPhone",userNameText.text,userPasswordText.text,string2]];
            
            NSString *urlString = [[NSString alloc]initWithFormat:@"https://bscpro.com/auth_api/login"];
            url=[[NSURL alloc] initWithString:urlString];
            NSMutableURLRequest *urlRequest=[NSMutableURLRequest requestWithURL:url];
            
            [urlRequest setHTTPMethod:@"POST"];
            [urlRequest setHTTPBody:[httpBodyString dataUsingEncoding:NSISOLatin1StringEncoding]];
            
            [NSURLConnection sendAsynchronousRequest:urlRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                // your data or an error will be ready here
                if (error)
                {
                    [activityIndicator stopAnimating];
                    NSLog(@"Failed to submit request");
                }
                else
                {
                    [activityIndicator stopAnimating];
                    NSString *content = [[NSString alloc]  initWithBytes:[data bytes]
                                                                  length:[data length] encoding: NSUTF8StringEncoding];
                    
                    NSError *error;
                    if ([NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error] == nil) {
                        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Delle Medical" message:@"Oops, we encountered an error or the site may be down for maintenance.  Please try again in a few minutes." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
                        
                        [alert show];
                        
                    }else{
                        NSDictionary *userDict=[NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
                        NSString *messages = [[NSString alloc]init];
                        messages = [userDict objectForKey:@"message"];
                        NSString *status = [[NSString alloc]init];
                        status = [userDict objectForKey:@"status"];
                        if([status isEqualToString:@"fail"])
                        {
                            
                            UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Delle Medical" message:messages delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
                            [alert show];
                        }else {
                            NSError *error;
                            NSDictionary *userDict=[NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
                            NSDictionary *userArray = [userDict objectForKey:@"user_profile"];
                            
                            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
                           //[prefs setObject:lvo.userid forKey:@"loggedin"];
                            [prefs synchronize];
                            
                            NSUserDefaults *prefsusername = [NSUserDefaults standardUserDefaults];
                            [prefsusername setObject:userNameText.text forKey:@"username"];
                            [prefsusername synchronize];
                            
                            NSUserDefaults *prefspassword = [NSUserDefaults standardUserDefaults];
                            [prefspassword setObject:userPasswordText.text forKey:@"password"];
                            [prefspassword synchronize];
                            
                            HomeViewController *home=[[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
                            [self.navigationController pushViewController:home animated:YES];
                        }
                    }
                }
            }];
        }
    }
}

-(void)animateTextField:(UITextField*)textField up:(BOOL)up
{
    const int movementDistance = -170; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? movementDistance : -movementDistance);
    
    [UIView beginAnimations: @"animateTextField" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField:textField up:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField:textField up:NO];
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{      
    if (textField == self.userNameText) {
        [self.userPasswordText becomeFirstResponder];
    }
    else if (textField == self.userPasswordText) {
        [self.userPasswordText resignFirstResponder];
        [self goTOHomePage];
    }
    return true;
}
-(void)goTOHomePage{
    HomeViewController *home=[[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    [self.navigationController pushViewController:home animated:YES];

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
