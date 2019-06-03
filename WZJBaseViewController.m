//
//  WZJBaseViewController.m
//  WZJBaseViewController
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019年 mac. All rights reserved.
//

#import "WZJBaseViewController.h"

@interface WZJBaseViewController ()

@end

@implementation WZJBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)pushControllerWithName:(NSString*)className{
    [self pushControllerWithName:className title:@"" params:nil callBack:nil];
}
-(void)pushControllerWithName:(NSString *)className params:(_Nullable id)params{
     [self pushControllerWithName:className title:@"" params:params callBack:nil];
}

-(void)pushControllerWithName:(NSString *)className title:(NSString *)title params:(_Nullable id)params{
     [self pushControllerWithName:className title:title params:params callBack:nil];
}

-(void)pushControllerWithName:(NSString *)className callBack:(PushCallBack)callBackBlock{
     [self pushControllerWithName:className title:@"" params:nil callBack:callBackBlock];
}
-(void)pushControllerWithName:(NSString *)className params:(_Nullable id)params callBack:(PushCallBack)callBackBlock{
    [self pushControllerWithName:className title:@"" params:params callBack:callBackBlock];
}
-(void)pushControllerWithName:(NSString *)className title:(NSString *)title params:(_Nullable id)params callBack:(PushCallBack)callBackBlock{
    if (className.length == 0) {
        return;
    }
    
    
    Class class = NSClassFromString(className);
    if (class) {
        UIViewController *vc = nil;
            vc = [class new];
        if ([vc respondsToSelector:@selector(setWParams:)]) {
            [vc performSelector:@selector(setWParams:) withObject:params afterDelay:0.1];
        }
        if ([vc respondsToSelector:@selector(setWCallBack:)]) {
            [vc performSelector:@selector(setWCallBack:) withObject:callBackBlock afterDelay:0.1];
        }
        if (title != nil) {
            vc.title = title;
        }
        
        [self.navigationController pushViewController:vc animated:YES];
    }
}
#pragma mark present contrller
-(void)presentControllerWithName:(NSString*)className{
     [self presentControllerWithName:className title:@"" params:nil callBack:nil];
}
-(void)presentControllerWithName:(NSString *)className params:(_Nullable id)params{
    [self pushControllerWithName:className title:@"" params:params callBack:nil];
}
-(void)presentControllerWithName:(NSString *)className title:(NSString *)title params:(_Nullable id)params{
    [self presentControllerWithName:className title:title params:params callBack:nil];
}
-(void)presentControllerWithName:(NSString *)className callBack:(PushCallBack)callBackBlock{
     [self presentControllerWithName:className title:@"" params:nil callBack:callBackBlock];
}
-(void)presentControllerWithName:(NSString *)className params:(_Nullable id)params callBack:(PushCallBack)callBackBlock{
    [self presentControllerWithName:className title:@"" params:params callBack:callBackBlock];
}
-(void)presentControllerWithName:(NSString *)className title:(NSString *)title params:(_Nullable id)params callBack:(PushCallBack)callBackBlock{
    if (className.length == 0) {
        return;
    }

    
    Class class = NSClassFromString(className);
    if (class) {
        UIViewController *vc = nil;
        vc = [class new];
        if ([vc respondsToSelector:@selector(setWParams:)]) {
            [vc performSelector:@selector(setWParams:) withObject:params afterDelay:0.1];
        }
        if ([vc respondsToSelector:@selector(setWCallBack:)]) {
            [vc performSelector:@selector(setWCallBack:) withObject:callBackBlock afterDelay:0.1];
        }
        if (title != nil) {
            vc.title = title;
        }
        [self presentViewController:vc animated:YES completion:nil];
    }
}

#pragma mark - 传参和回调
-(void)setWParams:(id)params{};
-(void)setWCallBack:(PushCallBack)block{ self.pushCallBackBlock = block; };
@end
