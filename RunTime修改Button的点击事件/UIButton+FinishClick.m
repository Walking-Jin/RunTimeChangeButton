//
//  UIButton+FinishClick.m
//  RunTime修改Button的点击事件
//
//  Created by lanou on 16/4/20.
//  Copyright © 2016年 WangJin. All rights reserved.
//

#import "UIButton+FinishClick.h"
#import <objc/runtime.h>

static const char *UIButtonClick;
static const char *UIButtonName;

@implementation UIButton (FinishClick)
+ (void)initialize
{
//    unsigned int outCount = 0;
    
    //所有的成员变量
//    Ivar *ivars = class_copyIvarList([UIButton class], &outCount);
//    for (int i=0; i<outCount; ++i){
//        Ivar ivar = *(ivars + i);
//        NSLog(@"%s",ivar_getName(ivar));
//    }
    
    
    //可以拿到所有的属性（隐藏的属性）
//    objc_property_t *propertys = class_copyPropertyList([UIButton class], &outCount);
//    for (int i=0; i<outCount; ++i){
//        objc_property_t p = *(propertys + i);
//        NSLog(@"%s",property_getName(p));
//    }
    
    
    //可以获取所有的方法（包括私有方法）
//    Method *methods = class_copyMethodList([UIButton class], &outCount);
//    for (int i=0; i<outCount; ++i){
//        Method method = *(methods + i);
//        NSLog(@"%@",NSStringFromSelector(method_getName(method)));
//    }
    
    
    //KVC
    

}
//一次性设计  有XIB的时候，当XIB第一次被唤醒的时候这个方法就会被调用
//- (void)awakeFromNib
//{
//    [self setValue:[UIColor redColor] forKeyPath:@"currentTitle.textColor"];
//}
- (void)setBlock:(FinishClickOperation)block {
    objc_setAssociatedObject(self, &UIButtonClick, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}
- (FinishClickOperation)block {
    return objc_getAssociatedObject(self, &UIButtonClick);
}
- (void)click {
    if (self.block) {
        self.block();
    }
}

- (void)setName:(NSString *)name{
    objc_setAssociatedObject(self, &UIButtonName, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)name {
    return objc_getAssociatedObject(self, &UIButtonName);
}

@end
