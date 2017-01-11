//
//  WFRoundCornersView.m
//  Thankscard-ios
//
//  Created by 久木田 悠紀乃 on 2016/05/23.
//  Copyright © 2016年 TRENTE. All rights reserved.
//

#import "WFRoundCornersView.h"

@implementation WFRoundCornersView
+ (UIView *)roundCornersLeft:(UIView *) view{
    return (UIView *)[self roundCornersOnView:view onTopLeft:YES topRight:NO bottomLeft:YES bottomRight:NO radius:3.0];
}

+ (UIView *)roundCornersRight:(UIView *) view{
    return (UIView *)[self roundCornersOnView:view onTopLeft:NO topRight:YES bottomLeft:NO bottomRight:YES radius:3.0];
}

+ (UIView *)roundCornersAll:(UIView *) view{
    return (UIView *)[self roundCornersOnView:view onTopLeft:YES topRight:YES bottomLeft:YES bottomRight:YES radius:3.0];
}
+ (UIView *)roundCornersAll:(UIView *) view size: (float) size {
    return (UIView *)[self roundCornersOnView:view onTopLeft:YES topRight:YES bottomLeft:YES bottomRight:YES radius:size];
}


+ (UIView *)roundCornersOnView:(UIView *)view onTopLeft:(BOOL)tl topRight:(BOOL)tr bottomLeft:(BOOL)bl bottomRight:(BOOL)br radius:(float)radius
{
    if (tl || tr || bl || br) {
        UIRectCorner corner = 0;
        if (tl) corner = corner | UIRectCornerTopLeft;
        if (tr) corner = corner | UIRectCornerTopRight;
        if (bl) corner = corner | UIRectCornerBottomLeft;
        if (br) corner = corner | UIRectCornerBottomRight;
        
        UIView *roundedView = view;
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:roundedView.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(radius, radius)];
        CAShapeLayer *maskLayer = [CAShapeLayer layer];
        maskLayer.frame = roundedView.bounds;
        maskLayer.path = maskPath.CGPath;
        roundedView.layer.mask = maskLayer;
        return roundedView;
    }
    return view;
}
@end
