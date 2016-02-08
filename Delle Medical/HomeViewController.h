//
//  HomeViewController.h
//  Delle Medical
//
//  Created by arvind on 1/29/16.
//  Copyright © 2016 arvind. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface HomeViewController : UIViewController
@property(nonatomic,retain) IBOutlet UILabel *giorgiaLbl,*pushNotificationLbl,*lockLblImg;
@property(nonatomic,retain) IBOutlet UIButton *mymedicalHistBtn,*centernotificaionBtn,*sendMsgBtn,*logoutBtn,*giorgiaBtn,*pushNotificationBtn;
@property (nonatomic, retain) IBOutlet UISwitch *msgSwitch;
@property(nonatomic,retain) IBOutlet UIImageView *Logoimg;

@end
