//
//  LEONewServerViewController.h
//  ConnectDisk
//
//  Created by Liu Ley on 12-10-29. 
//  Copyright (c) 2012年 SAE. All rights reserved.
//

#import "XDBaseViewController.h"
#import "MBProgressHUD.h"
@class LEOServerListViewController;
@class LEOServerInfo;

@interface LEONewServerViewController : XDBaseViewController<UITextFieldDelegate,MBProgressHUDDelegate>
-(void)setServerListVCInstance:(LEOServerListViewController *)one;
-(id)initWithServerInfo:(LEOServerInfo *)info atIndex:(NSInteger)index;
@end
