//
//  CenterNotificationViewController.h
//  Delle Medical
//
//  Created by arvind on 1/29/16.
//  Copyright © 2016 arvind. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CenterNotificationViewController : UIViewController
@property(nonatomic,retain) IBOutlet UILabel *giorgiaLbl;
@property(nonatomic,retain) IBOutlet UIButton *centernotificaionBtn,*backBtn;
@property(nonatomic,retain) IBOutlet UITextView *detailsTxtView;
@property(nonatomic,retain) IBOutlet UIImageView *Logoimg;
@property(nonatomic,retain) IBOutlet UIView *detail_view;
@property(nonatomic,retain) IBOutlet UIButton *notificationlistBtn,*appointmentBtn;

@end
