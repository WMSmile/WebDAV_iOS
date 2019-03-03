//
//  LEOAppDelegate.m
//  ConnectDisk
//
//  Created by Liu Ley on 12-10-22.
//  Copyright (c) 2012年 SAE. All rights reserved.
//

#import "LEOAppDelegate.h"
#import "LEOServerListViewController.h"
#import "LEOSettingsViewController.h"
#import "LEOUploadViewController.h"
#import "LEOMusicViewController.h"
#import "LEODoubleModeViewController.h"
#import "LEOWebDAVClient.h"
#import "LEOServerInfo.h"
#import "LEODefines.h"
#import "LEONetworkController.h"



@implementation LEOAppDelegate

//@synthesize rootTabBarController=_rootTabBarController;
//@synthesize serverTabBarController=_serverTabBarController;
@synthesize contentListVC=_contentListVC;
@synthesize musicVC=_musicVC;
@synthesize client;
@synthesize networkController;
@synthesize currentServer=_currentServer;



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
#if DEBUG
    //    [CocoaDebug enable];
    NSBundle *bundle = [[NSBundle alloc] initWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection10.bundle"];
    [bundle load];
#endif
    LEOServerListViewController *serverListVC=[[LEOServerListViewController alloc]init];
    UINavigationController *navServerListVC=[[UINavigationController alloc]initWithRootViewController:serverListVC];
    
    _settingsVC=[[LEOSettingsViewController alloc]init];
    _navSettingsVC=[[UINavigationController alloc]initWithRootViewController:_settingsVC];
    NSArray *rootTabBarVCArray = @[navServerListVC,_navSettingsVC];
    
//    NSArray *rootTabBarItemArray = [NSArray arrayWithObjects:kTabbarHome,kTabbarHomeSel,kTabbarSettings,kTabbarSettingsSel,nil];
    
    
    
    
    
    RDVTabBarController *tabBarController = [[RDVTabBarController alloc] init];
    [tabBarController setViewControllers:rootTabBarVCArray];
    self.window.rootViewController = tabBarController;

    
    UIImage *finishedImage = [UIImage imageNamed:@"tabbar_selected_background"];
    UIImage *unfinishedImage = [UIImage imageNamed:@"tabbar_normal_background"];
    NSArray *tabBarItemImages = @[kTabbarHome,kTabbarSettings];
    
    RDVTabBar *tabBar = [tabBarController tabBar];
    [tabBar setFrame:CGRectMake(CGRectGetMinX(tabBar.frame), CGRectGetMinY(tabBar.frame), CGRectGetWidth(tabBar.frame), 63)];
    NSInteger index = 0;
    for (RDVTabBarItem *item in [[tabBarController tabBar] items]) {
        [item setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",
                                                      [tabBarItemImages objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@",
                                                        [tabBarItemImages objectAtIndex:index]]];
        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        index++;
    }
    
    
    
    
    
    
    
    
//    _rootTabBarController=[[LEOTabBarViewController alloc] initWithViewControllers:rootTabBarVCArray andItems:rootTabBarItemArray];
//    self.window.rootViewController = self.rootTabBarController;
    [self.window makeKeyAndVisible];
//    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
    return YES;
}

#pragma mark - Public methods

-(LEOWebDAVClient *)setupClient:(LEOServerInfo *)info
{
    if (client!=nil) {
        [client cancelRequest];
        client=nil;
    }
    client = [[LEOWebDAVClient alloc] initWithRootURL:[NSURL URLWithString:info.url]
                                          andUserName:info.userName
                                          andPassword:info.password];
    return client;
}

-(void)setupCurrentServer:(LEOServerInfo *)info
{
    if (_currentServer!=nil) {
        _currentServer=nil;
    }
    _currentServer=[[LEOServerInfo alloc] initWithInfo:info];
    [self setupServerControllers];
    RDVTabBarController *tabbar = (RDVTabBarController *)self.window.rootViewController;
    UINavigationController *nav = (UINavigationController *)tabbar.selectedViewController;
    [nav pushViewController:_serverTabBarController animated:YES];
//    self.window.rootViewController=_serverTabBarController;
}

-(void)clearCurrentServer
{
    self.window.rootViewController=_rootTabBarController;
    [_uploadVC clearUploadController];
    [_musicVC clearMusicController];
}

-(LEONetworkController *)setupNetwork:(LEOServerInfo *)info
{
    if (networkController!=nil) {
        networkController=nil;
    }
    networkController=[[LEONetworkController alloc] initWithServerInfo:info];
    return networkController;
}

-(void)setupServerControllers
{
    _contentListVC=[[LEODoubleModeViewController alloc]initWithPath:nil];
    UINavigationController *navContentListVC=[[UINavigationController alloc] initWithRootViewController:_contentListVC];
    _uploadVC=[[LEOUploadViewController alloc] init];
    UINavigationController *navUploadVC=[[UINavigationController alloc] initWithRootViewController:_uploadVC];
    _musicVC=[[LEOMusicViewController alloc] init];
    UINavigationController *navMusicVC=[[UINavigationController alloc] initWithRootViewController:_musicVC];
    NSArray *serverTabBarVCArray=[NSArray arrayWithObjects:navContentListVC, navUploadVC, navMusicVC, nil];
    
//    NSArray *serverTabBarItemArray=[NSArray arrayWithObjects:kTabbarList,kTabbarListSel,kTabbarUpload,kTabbarUploadSel,kTabbarMusic,kTabbarMusicSel,kTabbarSettings,kTabbarSettingsSel,nil];
//    _serverTabBarController=[[LEOTabBarViewController alloc] initWithViewControllers:serverTabBarVCArray andItems:serverTabBarItemArray];
    
    
    
    RDVTabBarController *tabBarController = [[RDVTabBarController alloc] init];
    [tabBarController setViewControllers:serverTabBarVCArray];
    _serverTabBarController = tabBarController;
    
    
    UIImage *finishedImage = [UIImage imageNamed:@"tabbar_selected_background"];
    UIImage *unfinishedImage = [UIImage imageNamed:@"tabbar_normal_background"];
    NSArray *tabBarItemImages = @[kTabbarList,kTabbarUpload,kTabbarMusic];
    
    RDVTabBar *tabBar = [tabBarController tabBar];
    [tabBar setFrame:CGRectMake(CGRectGetMinX(tabBar.frame), CGRectGetMinY(tabBar.frame), CGRectGetWidth(tabBar.frame), 63)];
    NSInteger index = 0;
    for (RDVTabBarItem *item in [[tabBarController tabBar] items]) {
        [item setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",
                                                      [tabBarItemImages objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@",
                                                        [tabBarItemImages objectAtIndex:index]]];
        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        index++;
    }
    
}

- (void) remoteControlReceivedWithEvent: (UIEvent *) receivedEvent {
    if (receivedEvent.type == UIEventTypeRemoteControl) {
        if (_musicVC==nil) {
            return;
        }
        switch (receivedEvent.subtype) {
                
            case UIEventSubtypeRemoteControlTogglePlayPause:
                [_musicVC playButton:nil];
                break;
                
            case UIEventSubtypeRemoteControlPreviousTrack:
                [_musicVC previousButton:nil];
                break;
                
            case UIEventSubtypeRemoteControlNextTrack:
                [_musicVC nextButton:nil];
                break;
                
            default:
                break;
        }
    }
}
#pragma mark - APPlication

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
//    AVAudioSession *session = [AVAudioSession sharedInstance];
//    [session setActive:YES error:nil];
//    [session setCategory:AVAudioSessionCategoryPlayback error:nil];
    
    oldTaskId = UIBackgroundTaskInvalid;
    oldTaskId = [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:NULL];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    if (oldTaskId!= UIBackgroundTaskInvalid){
        [[UIApplication sharedApplication] endBackgroundTask: oldTaskId];
    }
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    [[UIApplication sharedApplication] endReceivingRemoteControlEvents];
}

@end
