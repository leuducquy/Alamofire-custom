//
//  UIView+Extra.m
//  chiase-ios-core
//
//  Created by Nguyen Huu Anh on 4/15/15.
//  Copyright (c) 2015 Trente VietNam. All rights reserved.
//

#import "UIView+Categories.h"

@implementation UIView (Categories)


+ (id)loadFromNibNamed:(NSString *)nibName
{
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil];
    return [nib objectAtIndex:0];
}

@end
