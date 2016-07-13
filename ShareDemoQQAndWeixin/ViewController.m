//
//  ViewController.m
//  ShareDemoQQAndWeixin
//
//  Created by 牛牛 on 16/7/11.
//  Copyright © 2016年 HanghuanTech. All rights reserved.
//

#import "ViewController.h"
// 导入头文件
#import <ShareSDKExtension/SSEThirdPartyLoginHelper.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)doLogin:(UIButton *)sender {
    
//    //例如QQ的登录
//    [ShareSDK getUserInfo:SSDKPlatformTypeQQ
//           onStateChanged:^(SSDKResponseState state, SSDKUser *user, NSError *error)
//     {
//         
//         if (state == SSDKResponseStateSuccess)
//         {
//             
//             NSLog(@"\n uid=    %@",user.uid);
//             NSLog(@"\n     %@   ",user.credential);
//             NSLog(@"\n token=   %@",user.credential.token);
//             NSLog(@"\n nickname=   %@",user.nickname);
//         }
//         
//         else
//         {
//             NSLog(@"%@",error);
//         }
//         
//     }];
    
    //添加微信登陆
    [ShareSDK getUserInfo:SSDKPlatformTypeWechat onStateChanged:^(SSDKResponseState state, SSDKUser *user, NSError *error) {
        
        if (state == SSDKResponseStateSuccess)
        {
            
            NSLog(@"\n uid=    %@",user.uid);
            NSLog(@"\n     %@   ",user.credential);
            NSLog(@"\n token=   %@",user.credential.token);
            NSLog(@"\n nickname=   %@",user.nickname);
        }
        
        else
        {
            NSLog(@"%@",error);
        }
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
