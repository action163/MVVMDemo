//
//  TableViewDataSource.m
//  MVVMDemo
//
//  Created by jzl on 16/7/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "TableViewDataSource.h"
#import "CustomTableViewCell.h"

@implementation TableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = (CustomTableViewCell* )[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.titleLabel.text=((CustomModel *)[_array objectAtIndex:indexPath.row]).title;
    cell.contentLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}

@end
