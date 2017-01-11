//
//  UIImageView+Categories.h
//  welfare-core-ios
//
//  Created by AnhNC on 8/2/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Categories)
- (CAShapeLayer *)applyRoundCorners:(UIRectCorner)corners frame:(CGRect)frame size:(CGSize)size;

@end
