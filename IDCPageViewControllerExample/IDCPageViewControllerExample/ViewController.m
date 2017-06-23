//
//  ViewController.m
//  IDCPageViewControllerExample
//
//  Created by idol_ios on 2017/6/19.
//  Copyright © 2017年 idol_ios. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"

@interface ViewController ()<IDCPageViewControllerDelegate>
@property (nonatomic, assign) BOOL hasInit;
@end

@implementation ViewController

//-(void)viewDidLoad{
//    [super viewDidLoad];
//}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"main vc viewDidAppear");
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"main vc viewWillAppear");
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"main vc viewDidDisappear");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"main vc viewWillDisappear");
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    if (self.hasInit) {
        return;
    }
    
    self.hasInit = YES;
    
    IDCPageViewController* pageVC = [[IDCPageViewController alloc] init];
    pageVC.pageViewControllerDelegate = self;
    [self addChildViewController:pageVC];
    
    
    SubViewController* subVC = [[SubViewController alloc] init];
    subVC.logTitle = @"sub 0";
    subVC.backColor = [UIColor yellowColor];
    [pageVC addChildViewController:subVC];
    
    subVC = [[SubViewController alloc] init];
    subVC.logTitle = @"sub 1";
    subVC.backColor = [UIColor greenColor];
    [pageVC addChildViewController:subVC];
    
    
    subVC = [[SubViewController alloc] init];
    subVC.logTitle = @"sub 2";
    subVC.backColor = [UIColor grayColor];
    [pageVC addChildViewController:subVC];
    
    subVC = [[SubViewController alloc] init];
    subVC.logTitle = @"sub 3";
    subVC.backColor = [UIColor blueColor];
    [pageVC addChildViewController:subVC];
    
    subVC = [[SubViewController alloc] init];
    subVC.logTitle = @"sub 4";
    subVC.backColor = [UIColor redColor];
    [pageVC addChildViewController:subVC];
    
    subVC = [[SubViewController alloc] init];
    subVC.logTitle = @"sub 5";
    subVC.backColor = [UIColor purpleColor];
    [pageVC addChildViewController:subVC];
    
    pageVC.view.frame = self.view.bounds;
    pageVC.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    [self.view addSubview:pageVC.view];
    
    [pageVC scrollToIndexViewController:2 animated:NO];
}

#pragma mark - IDCPageViewControllerDelegate

-(void)idcPageViewController:(IDCPageViewController*)vc didScrollToViewControllerAtIndex:(NSInteger)index{
    NSLog(@"IDCPageViewController didScrollToViewControllerAtIndex %d",(int)index);
}

@end
