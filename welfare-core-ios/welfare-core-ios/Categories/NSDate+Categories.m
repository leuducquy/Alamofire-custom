//
//  NSDate+Categories.m
//  welfare-core-ios
//
//  Created by VietND on 7/6/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "NSDate+Categories.h"

@implementation NSDate (Categories)

- (NSString *) formatString:(NSString *)formatString {
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setCalendar:gregorianCalendar];
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    [dateFormatter setDateFormat:formatString];
    return [dateFormatter stringFromDate:self];
}
-(NSString*)dateStringWithDay{
    NSString *date =[self formatString:@"yyyy/MM/dd"];
    NSString *day =[self formatString:@"EEE"];
    if ([day isEqualToString:@"Th 2"]) {
        day =@"T2";
    }else if ([day isEqualToString:@"Th 3"]) {
        day =@"T3";
    }else if ([day isEqualToString:@"Th 4"]) {
        day =@"T4";
    }else if ([day isEqualToString:@"Th 5"]) {
        day =@"T5";
    }else if ([day isEqualToString:@"Th 6"]) {
        day =@"T6";
    }else if ([day isEqualToString:@"Th 7"]) {
        day =@"T7";
    }
    return [NSString stringWithFormat:@"%@(%@)",date,day];
}
-(NSString*)stringFromDateWithFullStyle{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    return [dateFormatter stringFromDate:self];
}

+ (NSDate *)makeDate:(NSString *)dateString format:(NSString *)formatString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    @try {
        NSDate *date = [dateFormatter dateFromString:dateString];
        return date;
    }
    @catch (NSException *ex)
    {
        return nil;
    }
}

+ (NSString *)getDateFromString:(NSString *)dateString format:(NSString *)formatString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    NSDate *date = [dateFormatter dateFromString:dateString];
    NSDateFormatter *tempFormatter = [[NSDateFormatter alloc]init];
    [tempFormatter setDateFormat:@"yyyy/MM/dd"];
    return [tempFormatter stringFromDate:date];
}

+ (NSString *)getTimeFromString:(NSString *)dateString format:(NSString *)formatString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    NSDate *date = [dateFormatter dateFromString:dateString];
    NSDateFormatter *tempFormatter = [[NSDateFormatter alloc]init];
    [tempFormatter setDateFormat:@"HH:mm"];
    return [tempFormatter stringFromDate:date];
}

+ (NSInteger)diffDateBySecond:(NSDate *)firstDate withDate:(NSDate *)secondDate {
    if (firstDate == nil || secondDate == nil) {
        return 0;
    }
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar]
                                        components:NSCalendarUnitSecond
                                        fromDate:secondDate
                                        toDate:firstDate
                                        options:0];
    return dateComponents.second;
}

+ (NSInteger)diffDateByMinute:(NSDate *)firstDate withDate:(NSDate *)secondDate {
    if (firstDate == nil || secondDate == nil) {
        return 0;
    }
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar]
                                        components:NSCalendarUnitMinute
                                        fromDate:secondDate
                                        toDate:firstDate
                                        options:0];
    return dateComponents.minute + 1;
}

+ (NSInteger)diffDateByYear:(NSDate *)firstDate withDate:(NSDate *)secondDate {
    if (firstDate == nil || secondDate == nil) {
        return 0;
    }
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar]
                                        components:NSCalendarUnitYear
                                        fromDate:secondDate
                                        toDate:firstDate
                                        options:0];
    return dateComponents.year;
}
-(NSString *)monthYearString {
    NSDateFormatter *dateformate = [[NSDateFormatter alloc]init];
    // dateformate.dateStyle = NSDateFormatterFullStyle;
    [dateformate setDateFormat:@"yyyy-MM"];
    [dateformate setLocale:[NSLocale currentLocale]];
    NSString *stringFromDate = [dateformate stringFromDate:self];
    return stringFromDate;
}
-(NSString *)dayMonthString {
    NSDateFormatter *dateformate = [[NSDateFormatter alloc]init];
    // dateformate.dateStyle = NSDateFormatterFullStyle;
    [dateformate setDateFormat:@"MM/dd"];
    [dateformate setLocale:[NSLocale currentLocale]];
    NSString *stringFromDate = [dateformate stringFromDate:self];
    return stringFromDate;
}
+(NSString*)getDateNowWithFormatter:(NSString*)format{
    NSDate *now = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    dateFormat.dateFormat = format;
    return  [dateFormat stringFromDate:now];
}
@end
