//
//  UIButton+Categories.m
//  welfare-core-ios
//
//  Created by VietND on 11/15/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "UIButton+Categories.h"

@implementation UIButton (Categories)
-(void) centerButtonAndImageWithSpacing:(CGFloat)spacing {
    self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, spacing);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing, 0, 0);
}
@end
