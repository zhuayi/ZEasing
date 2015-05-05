//
//  ZEasing+Cubic.m
//  ZEasing
//
//  Created by zhuayi on 15/5/4.
//  Copyright (c) 2015年 zhuayi. All rights reserved.
//

#import "ZEasing+Cubic.h"

@implementation ZEasing_Cubic

+ (CGFloat)easeIn:(CGFloat)currentTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue duration:(CGFloat)duration {
    
    toValue = toValue - fromValue;
    return toValue * (currentTime /= duration) * currentTime * currentTime + fromValue;
}

+ (CGFloat)easeOut:(CGFloat)currentTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue duration:(CGFloat)duration {
    
    toValue = toValue - fromValue;
    
    return toValue * (currentTime = currentTime / duration - 1) * currentTime * currentTime + fromValue;
}

+ (CGFloat)easeInOut:(CGFloat)currentTime fromValue:(CGFloat)fromValue toValue:(CGFloat)toValue duration:(CGFloat)duration {
    
    toValue = toValue - fromValue;
    if ((currentTime /= duration / 2) < 1) {
        
        return toValue / 2 * currentTime * currentTime * currentTime + fromValue;
    } else {
        
        return toValue / 2 * ((currentTime -= 2) * currentTime * currentTime + 2) + fromValue;
    }
}

@end
