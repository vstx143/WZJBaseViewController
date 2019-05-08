//
//  WZJBaseViewController.h
//  WZJBaseViewController
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ __nullable PushCallBack) (id backParams);

@interface WZJBaseViewController : UIViewController
@property(nonatomic,copy) PushCallBack pushCallBackBlock;
#pragma mark navigation push
-(void)pushControllerWithName:(NSString*)className;
-(void)pushControllerWithName:(NSString *)className params:(_Nullable id)params;
-(void)pushControllerWithName:(NSString *)className title:(NSString *)title params:(_Nullable id)params;
-(void)pushControllerWithName:(NSString *)className callBack:(PushCallBack)callBackBlock;
-(void)pushControllerWithName:(NSString *)className params:(_Nullable id)params callBack:(PushCallBack)callBackBlock;
/**
 push Controller

 @param className 类名
 @param title 标题
 @param params 参数
 @param callBackBlock 回调Block
 */
-(void)pushControllerWithName:(NSString *)className title:(NSString *)title params:(_Nullable id)params callBack:(PushCallBack)callBackBlock;

#pragma mark controllerPresent
-(void)presentControllerWithName:(NSString*)className;
-(void)presentControllerWithName:(NSString *)className params:(_Nullable id)params;
-(void)presentControllerWithName:(NSString *)className title:(NSString *)title params:(_Nullable id)params;
-(void)presentControllerWithName:(NSString *)className callBack:(PushCallBack)callBackBlock;
-(void)presentControllerWithName:(NSString *)className params:(_Nullable id)params callBack:(PushCallBack)callBackBlock;
/**
 present Controller

 @param className 类名
 @param title 标题
 @param params 参数
 @param callBackBlock 回调Block
 */
-(void)presentControllerWithName:(NSString *)className title:(NSString *)title params:(_Nullable id)params callBack:(PushCallBack)callBackBlock;
#pragma mark --传参数和回调
-(void)setWParams:(id)params;
-(void)setWCallBack:(PushCallBack)block;
@end

NS_ASSUME_NONNULL_END
