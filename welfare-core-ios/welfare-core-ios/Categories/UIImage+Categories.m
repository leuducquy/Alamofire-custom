//
//  UIImage+Extra.m
//  chiase-ios-core
//
//  Created by Vietnd on 7/11/15.
//  Copyright (c) 2015 Trente VietNam. All rights reserved.
//

#import "UIImage+Categories.h"

@implementation UIImage (Categories)
- (UIImage *)scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContext(newSize);
    [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end
