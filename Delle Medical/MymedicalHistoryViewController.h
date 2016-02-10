//
//  MymedicalHistoryViewController.h
//  Delle Medical
//
//  Created by arvind on 1/29/16.
//  Copyright © 2016 arvind. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MymedicalHistoryViewController : UIViewController<UIWebViewDelegate> {
    UIWebView	*webView;
    NSURL	*pdfUrl;
}

@property(nonatomic,retain) IBOutlet UILabel *giorgiaLbl;
@property(nonatomic,retain) IBOutlet UIButton *mymedicalHistBtn,*backBtn;
@property(nonatomic,retain) IBOutlet UITextView *detailsTxtView;
@property(nonatomic,retain) IBOutlet UIImageView *Logoimg;
@property(nonatomic,retain) IBOutlet UIView *detail_view;
@property(nonatomic,retain) IBOutlet UIButton *pdgFormBtn,*scanedBtn;
@property(nonatomic,retain)  NSString *DestPath;
@property(nonatomic,retain) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (nonatomic, retain) IBOutlet UIWebView	*webView;
@property (nonatomic, retain) NSURL			*pdfUrl;

@end
