//
//  NSDate+Categories.h
//  welfare-core-ios
//
//  Created by VietND on 7/6/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Categories)

- (NSString *) formatString:(NSString *)formatString;
-(NSString*)stringFromDateWithFullStyle;
-(NSString*)dateStringWithDay;
+ (NSDate *)makeDate:(NSString *)dateString format:(NSString *)formatString;

+ (NSString *)getDateFromString:(NSString *)dateString format:(NSString *)formatString;
+ (NSString *)getTimeFromString:(NSString *)dateString format:(NSString *)formatString;
+ (NSInteger)diffDateBySecond:(NSDate *)firstDate withDate:(NSDate *)secondDate;
+ (NSInteger)diffDateByMinute:(NSDate *)firstDate withDate:(NSDate *)secondDate;
+ (NSInteger)diffDateByYear:(NSDate *)firstDate withDate:(NSDate *)secondDate;
+(NSString*)getDateNowWithFormatter:(NSString*)format;

@end
