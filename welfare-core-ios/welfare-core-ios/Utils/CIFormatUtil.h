//
//  CIFormatUtil.h
//  welfare-core-ios
//
//  Created by takano.yasuhiro on 10/27/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CIFormatUtil : NSObject

+ (NSString *)toString:(NSDate *)date format:(NSString *)formatString;

+ (NSString *)formatDate:(NSDate *)date;
+ (NSString *)formatDateWeek:(NSDate *)date;
+ (NSString *)formatDateTime:(NSDate *)date;
+ (NSString *)formatMonth:(NSDate *)date;


@end
