//
//  UIImageView+Categories.m
//  welfare-core-ios
//
//  Created by AnhNC on 8/2/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "UIImageView+Categories.h"

@implementation UIImageView (Categories)
- (CAShapeLayer *)applyRoundCorners:(UIRectCorner)corners frame:(CGRect)frame size:(CGSize)size  {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:frame byRoundingCorners:corners cornerRadii:size];
    
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = frame;
    maskLayer.path = maskPath.CGPath;
    return maskLayer;
}
@end
