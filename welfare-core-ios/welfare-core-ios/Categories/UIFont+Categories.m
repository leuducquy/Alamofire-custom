//
//  UIFont+Categories.m
//  welfare-core-ios
//
//  Created by VietND on 11/22/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "UIFont+Categories.h"

@implementation UIFont (Categories)
+(UIFont*)boldFont{
    return  [UIFont systemFontOfSize:12.0 weight:UIFontWeightMedium];
}
+(UIFont*)normalFont{
    return  [UIFont systemFontOfSize:12.0 weight:UIFontWeightRegular];
}
@end
