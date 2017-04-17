//
//  ViewController.m
//  自定义AlertView
//
//  Created by xiaxing on 16/7/20.
//  Copyright © 2016年 xiaxing. All rights reserved.
//

#import "ViewController.h"
#import "XMUIAlertView.h"
#define selfWith self.view.bounds.size.width
#define selfHeight self.view.bounds.size.height
#define selfBacground [UIColor colorWithRed:240/255.0 green:240/255.0 blue:240/255.0 alpha:1.0]
@interface ViewController ()<XMUIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    for (int i=0; i<3; i++) {
        
        UIButton * button=[UIButton buttonWithType:UIButtonTypeSystem];
        
        button.frame=CGRectMake((selfWith/3)*i, selfHeight/2,selfWith/3,49);
        
        [self.view addSubview:button];
        
        if (i==0) {
            
        [button setTitle:@"两个按钮" forState:UIControlStateNormal];
            
        [button addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
            
        }else if (i==1){
            
        [button setTitle:@"一个" forState:UIControlStateNormal];
            
        [button addTarget:self action:@selector(single) forControlEvents:UIControlEventTouchUpInside];
        
        }else{
    
        [button setTitle:@"没有" forState:UIControlStateNormal];
            
        [button addTarget:self action:@selector(cancel) forControlEvents:UIControlEventTouchUpInside];
            
        }
        
    }
    
}
-(void)pop{
   
    XMUIAlertView * alert=[[XMUIAlertView alloc]init];
    
    alert.frame=CGRectMake(0, 0, selfWith, selfHeight);
    
    alert.backgroundColor=selfBacground;

    [alert XMPopAletViewTitle:@"找我有事？" message:@"发送的合法的皮肤卡片的附件；拉丝机打发；绿色减肥" deleagte:self cancelButton:@"取消" otherbuttonTitle:@"确认"];
    
    [alert showAlert];
}
-(void)single{
    
    XMUIAlertView * alert=[[XMUIAlertView alloc]init];
    
    alert.frame=CGRectMake(0, 0, selfWith, selfHeight);
    
    alert.backgroundColor=selfBacground;
    
    [alert XMPopAletViewTitle:@"找我有事？" message:@"发送的合法的皮肤卡片的附件；拉丝机打发；绿色减肥" deleagte:self cancelButton:@"确认" otherbuttonTitle:nil];
    
    [alert showAlert];

}
-(void)cancel{
    
    XMUIAlertView * alert=[[XMUIAlertView alloc]init];
    
    alert.frame=CGRectMake(0, 0, selfWith, selfHeight);
    
    alert.backgroundColor=selfBacground;
    
    [self performSelector:@selector(Time:) withObject:alert afterDelay:1];
    
    [alert XMPopAletViewTitle:@"找我有事？" message:@"发送的合法的皮肤卡片的附件；拉丝机打发；绿色减肥" deleagte:self cancelButton:@"" otherbuttonTitle:@""];
    
    [alert showAlert];

}
-(void)Time:(XMUIAlertView *)view{

     [view removeFromSuperview];

}
-(void)XMClickedButtonAtIndex:(NSInteger)buttonIndex{

    if (buttonIndex==1) {
    
    NSLog(@"点击了确认按钮");
     
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
