//
//  XDBaseViewController.m
//  TeamDisk
//
//  Created by panwei on 2019/3/3.
//  Copyright © 2019 SAE. All rights reserved.
//

#import "XDBaseViewController.h"

@interface XDBaseViewController ()

@end

@implementation XDBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // 多个VC只有一个navigationBar，这里防止标题色被相邻VC修改后没法还原
    [self.navigationController setNavigationBarHidden:NO animated:animated];
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
