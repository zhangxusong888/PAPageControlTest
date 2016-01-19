//
//  PageControlRoundPoint.m
//  MyButton
//
//  Created by xdq on 16/1/19.
//  Copyright © 2016年 com.xdq. All rights reserved.
//

#import "PageControlRoundPoint.h"

#define kPointNoSelectColor [[UIColor grayColor] CGColor]
#define kPointSelectColor [[UIColor redColor] CGColor]

@implementation PageControlRoundPoint

-(void)setType:(NSInteger)type point:(CGPoint)point interval:(CGFloat)interval{
    if(self){
        if(0 == type){
            [self point:point];
            
        }
        else{
            [self selectPoint:point interval:interval];
        }
        self.backgroundColor = [[UIColor clearColor] CGColor];
    }
}


-(void)point:(CGPoint)point{
        //self.bounds
        
        UIBezierPath *pointPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(point.x, point.y, self.bounds.size.height, self.bounds.size.height)];
        
        self.path = pointPath.CGPath;
        self.strokeColor = kPointNoSelectColor;
        self.fillColor = kPointNoSelectColor;
}

-(void)selectPoint:(CGPoint)point interval:(CGFloat)interval{
        //self.bounds
        
    UIBezierPath *pointPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(point.x, point.y, self.bounds.size.height * 2 + interval, self.bounds.size.height) cornerRadius:self.bounds.size.height/2];// PathWithRect:CGRectMake(point.x, point.y, self.bounds.size.height * 2 + interval, self.bounds.size.height)];
        self.path = pointPath.CGPath;
        self.strokeColor = kPointSelectColor;
        self.fillColor = kPointSelectColor;
}

@end
