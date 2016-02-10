//
//  SendMessagesViewController.h
//  Delle Medical
//
//  Created by arvind on 1/29/16.
//  Copyright © 2016 arvind. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SendMessagesViewController : UIViewController<UITextViewDelegate>
@property(nonatomic,retain) IBOutlet UILabel *giorgiaLbl;
@property(nonatomic,retain) IBOutlet UIButton *sendMsgBtn,*backBtn,*msgSendBtn;
@property(nonatomic,retain) IBOutlet UITextView *detailsTxtView;
@property(nonatomic,retain) IBOutlet UIImageView *Logoimg;
@property(nonatomic,retain) IBOutlet UIView *detail_view;
@property(nonatomic,retain) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
