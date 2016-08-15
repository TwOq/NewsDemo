//
//  ViewController.m
//  NewsDemo
//
//  Created by lizq on 16/8/8.
//  Copyright © 2016年 zqLee. All rights reserved.
//

#import "SubViewController.h"
#import "PersonViewController.h"
#import "SportsViewController.h"
#import "NetworkViewController.h"
#import "BusinessViewController.h"
#import "GlobalViewController.h"
#import "TicketViewController.h"

@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"网易新闻";
    self.titleNormalColor = [UIColor blackColor];

}

#pragma mark  重写父类方法 添加子VC
- (NSArray<UIViewController *> *)layoutContentControllers {

    NSMutableArray *array = [NSMutableArray arrayWithCapacity:0];
    PersonViewController *personVC = [[PersonViewController alloc] init];
    personVC.title = @"人物";
    [array addObject:personVC];

    SportsViewController *sportVC = [[SportsViewController alloc] init];
    sportVC.title = @"运动";
    [array addObject:sportVC];

    NetworkViewController *networkVC = [[NetworkViewController alloc] init];
    networkVC.title = @"网络";
    [array addObject:networkVC];

    BusinessViewController *businessVC = [[BusinessViewController alloc] init];
    businessVC.title = @"商业";
    [array addObject:businessVC];

    GlobalViewController *globalVC = [[GlobalViewController alloc] init];
    globalVC.title = @"全球";
    [array addObject:globalVC];

    TicketViewController *ticketVC = [[TicketViewController alloc] init];
    ticketVC.title = @"彩票";
    [array addObject:ticketVC];

    return array;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
