//
//  ZEasing+Quadratic.m
//  ZEasing
//
//  Created by zhuayi on 15/5/4.
//  Copyright (c) 2015年 zhuayi. All rights reserved.
//

#import "ZEasing+Quadratic.h"

@implementation ZEasing_Quadratic


+ (CGFloat)easeIn:(CGFloat)currentTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue duration:(CGFloat)duration {
    
    toValue = toValue - fromValue;
    return toValue * (currentTime /= duration)*currentTime + fromValue;
}

+ (CGFloat)easeOut:(CGFloat)currentTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue duration:(CGFloat)duration {
    
    toValue = toValue - fromValue;
    return -toValue * (currentTime /= duration) * (currentTime - 2) + fromValue;
}

+ (CGFloat)easeInOut:(CGFloat)currentTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue duration:(CGFloat)duration {
    
    toValue = toValue - fromValue;
    if ((currentTime /= duration / 2) < 1) {
        
        return toValue / 2 * currentTime * currentTime + fromValue;
    } else {
        
        return -toValue / 2 * ((--currentTime) * (currentTime - 2) - 1) + fromValue;
    }
}


@end
