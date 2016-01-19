//
//  PAPageController.h
//  MyButton
//
//  Created by xdq on 16/1/19.
//  Copyright © 2016年 com.xdq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PAPageController : UIView

-(void)setPageNumberSelected:(NSInteger)pageNumberSelected;
-(instancetype)initWithFrame:(CGRect)frame NumberOfPages:(NSInteger)pageNumberAll;
@end
