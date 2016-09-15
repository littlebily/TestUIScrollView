//
//  ViewController.m
//  TestUIScrollView
//
//  Created by Bolu on 15/12/29.
//  Copyright © 2015年 Bolu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    scrollView.backgroundColor = [UIColor redColor];
    [self.view addSubview:scrollView];
    scrollView.contentSize = CGSizeMake(1000, 200);
    scrollView.delegate = self;
    
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"%f",scrollView.bounds.origin.x);
    NSLog(@"%f",scrollView.contentOffset.x);
}

@end
