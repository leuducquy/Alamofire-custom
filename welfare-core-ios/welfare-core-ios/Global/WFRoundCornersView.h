//
//  WFRoundCornersView.h
//  Thankscard-ios
//
//  Created by 久木田 悠紀乃 on 2016/05/23.
//  Copyright © 2016年 TRENTE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WFRoundCornersView : UIView

+ (UIView *)roundCornersLeft:(UIView *) view;
+ (UIView *)roundCornersRight:(UIView *) view;
+ (UIView *)roundCornersAll:(UIView *) view;
+ (UIView *)roundCornersAll:(UIView *) view size: (float) size;

+ (UIView *)roundCornersOnView:(UIView *)view onTopLeft:(BOOL)tl topRight:(BOOL)tr bottomLeft:(BOOL)bl bottomRight:(BOOL)br radius:(float)radius;

@end
