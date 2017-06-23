//
//  SubViewController.m
//  IDCPageViewControllerExample
//
//  Created by idol_ios on 2017/6/19.
//  Copyright © 2017年 idol_ios. All rights reserved.
//

#import "SubViewController.h"

@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@ viewDidLoad",self.logTitle);
    
    UILabel* label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    label.textColor = [UIColor blackColor];
    label.font = [UIFont systemFontOfSize:15];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = self.logTitle;
    
    [self.view addSubview:label];
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 100, 80, 30);
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"present" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(present:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(10, btn.frame.origin.y + btn.frame.size.height + 20, 80, 30);
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 setTitle:@"dismiss" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(dismiss:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    [self.view addSubview:btn2];
    
    self.view.backgroundColor = self.backColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NSLog(@"%@ viewDidAppear",self.logTitle);
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    NSLog(@"%@ viewWillAppear",self.logTitle);
}

-(void)viewDidDisappear:(BOOL)animated{
    
    [super viewDidDisappear:animated];
    
    NSLog(@"%@ viewDidDisappear",self.logTitle);
    
}

-(void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    
    NSLog(@"%@ viewWillDisappear",self.logTitle);
    
}

#pragma mark - present
-(void)present:(id)obj{
    
    SubViewController* vc = [[SubViewController alloc] init];
    vc.logTitle = @"Present VC";
    vc.backColor = [UIColor colorWithRed:249 green:204 blue:226 alpha:1.0f];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
    
}

-(void)dismiss:(id)obj{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
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
