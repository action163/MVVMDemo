//
//  TableViewModel.m
//  MVVMDemo
//
//  Created by jzl on 16/7/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "TableViewModel.h"
#import "CustomModel.h"
@interface TableViewModel ()

@end

@implementation TableViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)headerRefreshRequestWithCallback:(callback)callback
{
        //  后台执行：
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            sleep(2);
            dispatch_async(dispatch_get_main_queue(), ^{
#pragma mark  这儿写网络请求
                //               主线程刷新视图
                NSMutableArray *arr=[NSMutableArray array];
                for (int i=0; i<4; i++) {
                    NSString *string=[NSString stringWithFormat:@"轮回尽头，黑暗永恒，万灵的归宿！"];
                    CustomModel *model=[[CustomModel alloc] init];
                    model.title=string;
                    [arr addObject:model];
                }
#pragma mark  请求到这儿结束
                callback(arr);
            });
        });
}

- (void )footerRefreshRequestWithCallback:(callback)callback
{
        //  后台执行：
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            sleep(2);
            dispatch_async(dispatch_get_main_queue(), ^{
                //               主线程刷新视图
                NSMutableArray *arr=[NSMutableArray array];
                for (int i=0; i<4; i++) {
                    NSString *string=[NSString stringWithFormat:@"轮回尽头，黑暗永恒，万灵的归宿！"];
                    CustomModel *model=[[CustomModel alloc] init];
                    model.title=string;
                    [arr addObject:model];
                }
                callback(arr);
            });
        });
}

@end
