//
//  PAPageControl.m
//  PAPageControlTest
//
//  Created by admin on 16/1/19.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "PAPageControl.h"
#import "PANormalPointLayer.h"
#import "PASelectedPointLayer.h"

#define kMinPageNumber            2
#define kMaxPageNumber            20

#define kSelectedToNormalRatio    3
#define kPointInterval            10

@interface PAPageControl ()

@property (assign, nonatomic) NSInteger numberOfPages;
@property (assign, nonatomic) NSInteger currentPage;

@end

@implementation PAPageControl

// MARK: Public Interface Functions
- (instancetype)initWithFrame:(CGRect)frame
                numberOfPages:(NSInteger)numberOfPages {
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = frame;
        if (numberOfPages < kMinPageNumber) {
            self.numberOfPages = kMinPageNumber;
        } else if (numberOfPages > kMaxPageNumber){
            self.numberOfPages = kMaxPageNumber;
        } else {
            self.numberOfPages = numberOfPages;
        }
        self.currentPage = 0;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)changeCurrentPage:(NSInteger)currentPage {
    if (currentPage < 0) {
        self.currentPage = 0;
    } else if (currentPage > (self.numberOfPages - 1)) {
        self.currentPage = self.numberOfPages - 1;
    } else {
        self.currentPage = currentPage;
    }
    [self setNeedsDisplay];
}

// MARK: Life Cycle Fucntions

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self removeAllLayers];
    [self addPointLayers];
}

// MARK: Private Functions
- (void)removeAllLayers {
    NSArray *subLayers = [NSArray arrayWithArray:self.layer.sublayers];
    for (CALayer *layer in subLayers) {
        [layer removeFromSuperlayer];
    }
}

- (void)addPointLayers {
    CGFloat caculatedDiam = (self.bounds.size.width - (self.numberOfPages - 1) * kPointInterval) / (self.numberOfPages + (kSelectedToNormalRatio - 1));
    CGFloat diam = MIN(self.bounds.size.height, caculatedDiam);
    
    CGFloat offset = 0;
    CGFloat x = 0;
    CGFloat y = (self.bounds.size.height / 2) - (diam / 2);
    for (NSInteger i = 0; i < self.numberOfPages; i++) {
        if (i == self.currentPage) {
            PASelectedPointLayer *seletedLayer = [[PASelectedPointLayer alloc] initWithFrame:CGRectMake((x + offset), y, (diam * kSelectedToNormalRatio), diam)];
            [self.layer addSublayer:seletedLayer];
            offset += (diam * kSelectedToNormalRatio);
        } else {
            PANormalPointLayer *normalLayer = [[PANormalPointLayer alloc] initWithFrame:CGRectMake((x + offset), y, diam, diam)];
            [self.layer addSublayer:normalLayer];
            offset += diam;            
        }
        offset += kPointInterval;
    }
}

@end
