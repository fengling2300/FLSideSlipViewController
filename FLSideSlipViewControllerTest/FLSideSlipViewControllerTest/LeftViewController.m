//
//  LeftViewController.m
//  test123
//
//  Created by kf1 on 14-9-20.
//  Copyright (c) 2014年 kf1. All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

//- (id)initWithStyle:(UITableViewStyle)style
//{
//    self = [super initWithStyle:UITableViewStylePlain];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

-(id)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self.view setBackgroundColor:[UIColor clearColor]];
    tableview = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    tableview.backgroundColor = [UIColor clearColor];
    tableview.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    tableview.delegate = self;
    tableview.dataSource = self;
    [self.view addSubview:tableview];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == Nil) {
        cell = [[UITableViewCell alloc]  initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.contentView.backgroundColor = [UIColor clearColor];
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.textLabel.text = [NSString stringWithFormat:@"test%d",indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        UIViewController *controller1 = [[UIViewController alloc]init];
        [controller1.view setBackgroundColor:[UIColor redColor]];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller1];
        AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
        [delegate.menuViewController setNewRootViewController:nav animation:YES];
    }else if(indexPath.row == 1){
        UIViewController *controller2 = [[UIViewController alloc]init];
        [controller2.view setBackgroundColor:[UIColor blueColor]];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller2];
        AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
        [delegate.menuViewController setNewRootViewController:nav animation:YES];
    }else{
        UIViewController *controller3 = [[UIViewController alloc]init];
        [controller3.view setBackgroundColor:[UIColor magentaColor]];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller3];
        AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
        [delegate.menuViewController setNewRootViewController:nav animation:YES];
    }
}

@end
