//
//  CIDateUtil.h
//  welfare-core-ios
//
//  Created by takano.yasuhiro on 10/27/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CIDateUtil : NSObject

+ (NSDate *)offsetDay:(NSDate *)date offset:(NSInteger)offsetValue;
+ (NSDate *)offsetMonth:(NSDate *)date offset:(NSInteger)offsetValue;

@end
