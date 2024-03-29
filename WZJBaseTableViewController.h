//
//  WZJBaseTableViewController.h
//  WZJBaseViewController
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019年 mac. All rights reserved.
//

#import "WZJBaseViewController.h"
#import "WZJBaseViewControllerConfig.h"
#import <DZNEmptyDataSet/UIScrollView+EmptyDataSet.h>
NS_ASSUME_NONNULL_BEGIN

@interface WZJBaseTableViewController : WZJBaseViewController<UITableViewDelegate,UITableViewDataSource,DZNEmptyDataSetSource,DZNEmptyDataSetDelegate,BaseRefreshDelegate>
@property(nonatomic,strong) UITableView *w_tableView;
@property(nonatomic,assign) int currentPage;

@property(nonatomic,weak) id<BaseRefreshDelegate> refreshDelegate;
-(void)addRefreshFunction:(WRefreshType) refreshType;
-(void)startRequest;
@end


NS_ASSUME_NONNULL_END
