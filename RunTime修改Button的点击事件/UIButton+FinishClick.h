//
//  UIButton+FinishClick.h
//  RunTime修改Button的点击事件
//
//  Created by lanou on 16/4/20.
//  Copyright © 2016年 WangJin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^FinishClickOperation)();
@interface UIButton (FinishClick)

@property (nonatomic, copy) FinishClickOperation block;
@property (nonatomic, copy) NSString *name;
@end
