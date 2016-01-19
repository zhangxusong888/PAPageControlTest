//
//  PANormalPointLayer.m
//  PAPageControlTest
//
//  Created by admin on 16/1/19.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "PANormalPointLayer.h"
#import "PATheme.h"
#import <UIKit/UIKit.h>

#define kNormalPointColor    0xcccccc

@implementation PANormalPointLayer

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super init];
    if (self) {
        self.frame = frame;
        CGFloat diam = MIN(self.frame.size.width, self.frame.size.height);
        self.path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, diam, diam)].CGPath;
        self.fillColor = UIColorFromRGB(kNormalPointColor).CGColor;
    }
    return self;
}

@end
