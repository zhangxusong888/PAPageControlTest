//
//  ViewController.m
//  PAPageControlTest
//
//  Created by admin on 16/1/19.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ViewController.h"
#import "PAPageControl.h"

@interface ViewController ()

@property (strong, nonatomic) PAPageControl *pageControl;
@property (assign, nonatomic) NSInteger current;
@property (assign, nonatomic) NSInteger numberOfPages;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.current = 0;
    self.numberOfPages = 5;
    [self addPAPageControl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testButtonTouched:(UIButton *)sender {
    self.current++;
    NSInteger currentPage = self.current % self.numberOfPages;
    [self.pageControl changeCurrentPage:currentPage];
}

- (void)addPAPageControl {
    self.pageControl = [[PAPageControl alloc] initWithFrame:CGRectMake(20, 100, 320, 80) numberOfPages:self.numberOfPages];
    self.pageControl.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.pageControl];
}

@end
