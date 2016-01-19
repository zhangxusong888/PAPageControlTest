//
//  PASelectedPointLayer.m
//  PAPageControlTest
//
//  Created by admin on 16/1/19.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "PASelectedPointLayer.h"
#import "PATheme.h"
#import <UIKit/UIKit.h>

#define kSelectedPointColor    0xffffff

@implementation PASelectedPointLayer

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super init];
    if (self) {
        self.frame = frame;
        CGFloat cornerRadius = MIN(self.bounds.size.width, self.bounds.size.height) / 2;
        self.path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:cornerRadius].CGPath;
        self.fillColor = UIColorFromRGB(kSelectedPointColor).CGColor;
    }
    return self;
}

@end
