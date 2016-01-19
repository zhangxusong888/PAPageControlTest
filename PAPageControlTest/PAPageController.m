//
//  PAPageController.m
//  MyButton
//
//  Created by xdq on 16/1/19.
//  Copyright © 2016年 com.xdq. All rights reserved.
//

#import "PAPageController.h"
#import "PageControlRoundPoint.h"

@interface PAPageController(){
    NSInteger _pageNumberSelected;
    NSInteger _pageNumberAll;
}


@end

#define kPointOfInterval 10

@implementation PAPageController

-(instancetype)initWithFrame:(CGRect)frame NumberOfPages:(NSInteger)pageNumberAll{
    self = [super initWithFrame:frame];
    if(self){
        _pageNumberAll = pageNumberAll;
        self.backgroundColor = [UIColor whiteColor];
    }
    
    return self;
}

//-(void)showAllPoints:(NSInteger)numberOfPages {
//    
////    if(_pageNumberSelected == nil){
////        
////    }
//    _pageNumberAll = numberOfPages;
//    for(NSInteger i=0;i<_pageNumberAll;i++){
//        PageControlRoundPoint *point = [[PageControlRoundPoint alloc] init];
//        point.frame = self.bounds;
//        if(i < _pageNumberSelected){
//            [point setType:0 point:CGPointMake(i*(self.bounds.size.height+kPointOfInterval), 0) interval:kPointOfInterval];
//        }
//        else if(i == _pageNumberSelected){
//            [point setType:1 point:CGPointMake(i*(self.bounds.size.height+kPointOfInterval), 0) interval:kPointOfInterval];
//        }
//        else{
//            [point setType:0 point:CGPointMake((i+1)*(self.bounds.size.height+kPointOfInterval), 0) interval:kPointOfInterval];
//        }
//        
//        [self.layer addSublayer:point];
//    }
//}

-(void)setPageNumberSelected:(NSInteger)pageNumberSelected{
    _pageNumberSelected = pageNumberSelected;
    
    [self setNeedsDisplay];
    
}






// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //_pageNumberSelected
    
    for(NSInteger i=0;i<_pageNumberAll;i++){
        PageControlRoundPoint *point = [[PageControlRoundPoint alloc] init];
        point.frame = self.bounds;
        if(i < _pageNumberSelected){
            [point setType:0 point:CGPointMake(i*(self.bounds.size.height+kPointOfInterval), 0) interval:kPointOfInterval];
        }
        else if(i == _pageNumberSelected){
            [point setType:1 point:CGPointMake(i*(self.bounds.size.height+kPointOfInterval), 0) interval:kPointOfInterval];
        }
        else{
            [point setType:0 point:CGPointMake((i+1)*(self.bounds.size.height+kPointOfInterval), 0) interval:kPointOfInterval];
        }
        
        [self.layer addSublayer:point];
    }
    
}


@end
