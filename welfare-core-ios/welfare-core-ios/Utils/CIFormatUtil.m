//
//  CIFormatUtil.m
//  welfare-core-ios
//
//  Created by takano.yasuhiro on 10/27/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "CIFormatUtil.h"

@implementation CIFormatUtil

+ (NSString *)toString:(NSDate *)date format:(NSString *)formatString {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formatString];
    [formatter setCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian]];
    [formatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"] ];
    return [formatter stringFromDate:date];
}

+ (NSString *)formatDate:(NSDate *)date {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy/MM/dd";
    return [formatter stringFromDate:date];
}

+ (NSString *)formatDateWeek:(NSDate *)date {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy/MM/dd(EEE)";
    return [formatter stringFromDate:date];
}

+ (NSString *)formatDateTime:(NSDate *)date {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy/MM/dd HH:mm:ss";
    return [formatter stringFromDate:date];
}


+ (NSString *)formatMonth:(NSDate *)date {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy/MM";
    return [formatter stringFromDate:date];
}

@end
