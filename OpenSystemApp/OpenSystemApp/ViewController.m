//
//  ViewController.m
//  OpenSystemApp
//
//  Created by scjy on 15/12/29.
//  Copyright © 2015年 scjy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(60, 100, 100, 44);
    [btn setTitle:@"发送讯息" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(showMessage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    UIButton *sendEmailBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    sendEmailBtn.frame = CGRectMake(60, 180, 100, 44);
    [sendEmailBtn setTitle:@"发送邮件" forState:UIControlStateNormal];
    sendEmailBtn.backgroundColor = [UIColor orangeColor];
    [sendEmailBtn addTarget:self action:@selector(openEmail) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sendEmailBtn];
    
    UIButton *Btn5 = [UIButton buttonWithType:UIButtonTypeSystem];
    Btn5.frame = CGRectMake(60, 240, 100, 44);
    [Btn5 setTitle:@"打开浏览器" forState:UIControlStateNormal];
    Btn5.backgroundColor = [UIColor orangeColor];
    [Btn5 addTarget:self action:@selector(openBrowser) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Btn5];
    
    UIButton *Btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    Btn1.frame = CGRectMake(60, 300, 100, 44);
    [Btn1 setTitle:@"打开地图" forState:UIControlStateNormal];
    Btn1.backgroundColor = [UIColor orangeColor];
    [Btn1 addTarget:self action:@selector(openMaps) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Btn1];
    
    
    
    
    
    
    
    
    
    
}



/**
 *  消息
 */
-(void)showMessage{
    
    MFMessageComposeViewController *message=[[MFMessageComposeViewController alloc]init];
    message.delegate=self;
    
    if ([MFMessageComposeViewController canSendText]) {
        message.body=@"hellow";
        
        [self presentViewController:message animated:YES completion:nil];
        
    }
    else {
        
        UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"消息" message:@"设备不支持" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *acton=[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"确定");
        }];
        
        UIAlertAction *acton1=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"取消");
        }];

        
        [alert addAction:acton];
        [alert addAction:acton1];
        
    }
    
    
}

-(void)openEmail{
    
}

-(void)openBrowser{
    
}

-(void)openMaps{
    
    
    
    
}




#pragma mark ---消息
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{
    
   
    switch (result) {
        case MessageComposeResultCancelled:
            NSLog(@"短信已经取消");
            break;
         
        case MessageComposeResultSent:
            NSLog(@"短信发送成功");
            break;
        case MessageComposeResultFailed:
            NSLog(@"短信发送失败");
            break;
            
            
        default:
            break;
    }
    
    
    
    
    
}















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
