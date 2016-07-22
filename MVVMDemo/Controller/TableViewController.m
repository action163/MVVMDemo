//
//  TableViewController.m
//  MJRefresh
//
//  Created by jzl on 16/7/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "TableViewController.h"
#import <MJRefresh.h>
#import "TableViewModel.h"
#import "TableViewDataSource.h"
#import "TableViewDelegate.h"
@interface TableViewController ()
{

    MJRefreshNormalHeader *refreshHeader;
    MJRefreshAutoNormalFooter *refreshFooter;
    NSMutableArray *totalSource;
    TableViewModel *tableViewModel;
    UITableView *tableView;
    TableViewDataSource *tableViewDataSource;
    TableViewDelegate *tableViewDelegate;
}

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (iOS7) {
        self.edgesForExtendedLayout = UIRectEdgeBottom | UIRectEdgeLeft | UIRectEdgeRight;
    }
    self.title=@"MVVMDemo";
    self.view.backgroundColor=[UIColor whiteColor];
    
    tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, WScreen, HScreen-64) style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    tableViewDataSource=[[TableViewDataSource alloc] init];
    tableViewDelegate=[[TableViewDelegate alloc] init];
    tableView.dataSource=tableViewDataSource;
    tableView.delegate=tableViewDelegate;
    tableViewModel=[[TableViewModel alloc] init];
    totalSource=[NSMutableArray array];

    refreshHeader=[MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [tableViewModel headerRefreshRequestWithCallback:^(NSArray *array){
            [refreshHeader endRefreshing];
            [totalSource removeAllObjects];
            totalSource=(NSMutableArray *)array;
            tableViewDataSource.array=totalSource;
            tableViewDelegate.array=totalSource;
            [tableView reloadData];
        }];

    }];
    [refreshHeader setTitle:@"一万只草泥马正在为您刷新。。。" forState:MJRefreshStateRefreshing];
    tableView.mj_header = refreshHeader;
    [refreshHeader beginRefreshing];

    refreshFooter=[MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        [tableViewModel footerRefreshRequestWithCallback:^(NSArray *array){
            [refreshFooter endRefreshing];
            [totalSource addObjectsFromArray:array] ;
            tableViewDataSource.array=totalSource;
            tableViewDelegate.array=totalSource;
            [tableView reloadData];
        }];
    }];
    [refreshFooter setTitle:@"一万只草泥马正在等待中。。。" forState:MJRefreshStateIdle];
    [refreshFooter setTitle:@"一万只草泥马正拼命往前冲。。。" forState:MJRefreshStateRefreshing];
    tableView.mj_footer = refreshFooter;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
