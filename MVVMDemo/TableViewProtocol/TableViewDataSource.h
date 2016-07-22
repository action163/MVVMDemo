//
//  TableViewDataSource.h
//  MVVMDemo
//
//  Created by jzl on 16/7/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TableViewDataSource : NSObject<UITableViewDataSource>

@property (nonatomic,strong) NSArray *array;

@end
