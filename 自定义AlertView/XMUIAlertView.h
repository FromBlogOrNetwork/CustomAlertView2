//
//  XMUIAlertView.h
//  自定义AlertView
//
//  Created by xiaxing on 16/7/20.
//  Copyright © 2016年 xiaxing. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XMUIAlertView;

@protocol XMUIAlertViewDelegate <NSObject>

@required

-(void)XMClickedButtonAtIndex:(NSInteger)buttonIndex;

@end

@interface XMUIAlertView : UIView

@property(nonatomic,weak)__weak id<XMUIAlertViewDelegate>delegate;
//警告框标题
@property(nonatomic,copy) NSString *  title;
//警告框内容
@property(nonatomic,copy) NSString * body;
//警告框显示
-(void)showAlert;

-(void)XMPopAletViewTitle:(NSString *)title message:(NSString *)message deleagte:(id)delegate cancelButton:(NSString *)cancel otherbuttonTitle:(NSString *)other;

@end
