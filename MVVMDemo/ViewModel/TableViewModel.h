//
//  TableViewModel.h
//  MVVMDemo
//
//  Created by jzl on 16/7/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^callback) (NSArray *array);

@interface TableViewModel : NSObject

//tableView头部刷新的网络请求
- (void)headerRefreshRequestWithCallback:(callback)callback;
//tableView底部刷新的网络请求
- (void)footerRefreshRequestWithCallback:(callback)callback;

@end
