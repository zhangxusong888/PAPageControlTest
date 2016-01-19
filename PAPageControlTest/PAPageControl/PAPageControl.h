//
//  PAPageControl.h
//  PAPageControlTest
//
//  Created by admin on 16/1/19.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PAPageControl : UIView

- (instancetype)initWithFrame:(CGRect)frame
                numberOfPages:(NSInteger)numberOfPages;
- (void)changeCurrentPage:(NSInteger)currentPage;

@end
