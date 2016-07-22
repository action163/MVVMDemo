//
//  TableViewDelegate.m
//  MVVMDemo
//
//  Created by jzl on 16/7/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "TableViewDelegate.h"

@implementation TableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_array.count>0) {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"" message:((CustomModel *)[_array objectAtIndex:indexPath.row]).title delegate:nil cancelButtonTitle:@"sure" otherButtonTitles:nil, nil];
        [alert show];
    }    
}
@end
