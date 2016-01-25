//
//  ViewController.m
//  MVCRefactoring
//
//  Created by zengcatch on 16/1/24.
//  Copyright © 2016年 catch. All rights reserved.
//

#import "ViewController.h"
#import "CATTeacherLoginViewController.h"
#import "CATStudentLoginViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController{
    NSArray* _arrayType;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"MVCRefactoring";
    _arrayType = [NSArray arrayWithObjects:@"我是老师",@"我是学生",nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *tableIdentifier = @"tableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [_arrayType objectAtIndex:row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController* vc = nil;
    if (indexPath.row == 0) {
        vc = [[CATTeacherLoginViewController alloc]init];
    }else{
        vc = [[CATStudentLoginViewController alloc]init];
    }
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end