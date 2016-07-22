//
//  CustomTableViewCell.m
//  MVVMDemo
//
//  Created by jzl on 16/7/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, WScreen-110, 50)];
        [self.contentView addSubview:_titleLabel];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.backgroundColor=[UIColor clearColor];
        _titleLabel.font=[UIFont systemFontOfSize:14];
        _contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(WScreen-100, 0, 100, 50)];
        [self.contentView addSubview:_contentLabel];
        _contentLabel.textAlignment = NSTextAlignmentCenter;
        _contentLabel.backgroundColor=[UIColor clearColor];
        _contentLabel.font=[UIFont systemFontOfSize:14];
        
        self.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];
    }
    return self;
}

@end
