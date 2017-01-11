//
//  NSString+Extra.m
//  chiase-ios-core
//
//  Created by Vietnd on 7/11/15.
//  Copyright (c) 2015 Trente VietNam. All rights reserved.
//

#import "NSString+Categories.h"

@implementation NSString (Categories)
+ (NSString *)stringFromConst:(const NSString *)constant {
    return [NSString stringWithFormat:@"%@", constant];
}
+ (NSString *)getDateFromString:(NSString *)dateString format:(NSString *)formatString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    NSDate *date = [dateFormatter dateFromString:dateString];
    NSDateFormatter *tempFormatter = [[NSDateFormatter alloc]init];
    [tempFormatter setDateFormat:@"yyyy/MM/dd"];
    return [tempFormatter stringFromDate:date];
}
+ (NSString *)getTimeString:(NSString *)dateString format:(NSString *)formatString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    NSDate *date = [dateFormatter dateFromString:dateString];
    NSDateFormatter *tempFormatter = [[NSDateFormatter alloc]init];
    [tempFormatter setDateFormat:@"HH:mm"];
    return [tempFormatter stringFromDate:date];
}
+ (NSString *)getFullTimeString:(NSString *)dateString format:(NSString *)formatString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    NSDate *date = [dateFormatter dateFromString:dateString];
    NSDateFormatter *tempFormatter = [[NSDateFormatter alloc]init];
    [tempFormatter setDateFormat:@"yyyy/MM/dd HH:mm"];
    return [tempFormatter stringFromDate:date];
}

+ (NSString *)stringFromInteger:(NSInteger)constant {
    return [NSString stringWithFormat:@"%ld", (long)constant];
}

+ (NSString *)langFromLocale:(NSString *)locale {
    NSRange r = [locale rangeOfString:@"_"];
    if (r.length == 0)
        r.location = locale.length;
    NSRange r2 = [locale rangeOfString:@"-"];
    if (r2.length == 0)
        r2.location = locale.length;
    return
    [[locale substringToIndex:MIN(r.location, r2.location)] lowercaseString];
}
//- (NSString *)stringByTrimmingLeadingCharactersInSet:(NSCharacterSet
//*)characterSet {
//    NSRange rangeOfFirstWantedCharacter = [self
//    rangeOfCharacterFromSet:[characterSet invertedSet]];
//    if (rangeOfFirstWantedCharacter.location == NSNotFound) {
//        return @"";
//    }
//    return [self substringFromIndex:rangeOfFirstWantedCharacter.location];
//}

- (NSString *)stringByTrimmingLeadingWhitespaceAndNewlineCharacters {
    return [self
            stringByTrimmingCharactersInSet:[NSCharacterSet
                                             whitespaceAndNewlineCharacterSet]];
}

//- (NSString *)stringByTrimmingTrailingCharactersInSet:(NSCharacterSet
//*)characterSet {
//    NSRange rangeOfLastWantedCharacter = [self
//    rangeOfCharacterFromSet:[characterSet invertedSet]
//                                                               options:NSBackwardsSearch];
//    if (rangeOfLastWantedCharacter.location == NSNotFound) {
//        return @"";
//    }
//    return [self substringToIndex:rangeOfLastWantedCharacter.location+1]; //
//    non-inclusive
//}

- (NSString *)stringByTrimmingTrailingWhitespaceAndNewlineCharacters {
    return [self
            stringByTrimmingCharactersInSet:[NSCharacterSet
                                             whitespaceAndNewlineCharacterSet]];
}

- (BOOL)isEmpty {
    if (self == nil) {
        return YES;
    }
    if ([self isEqualToString:@""]) {
        return YES;
    }
    if ([self isEqual:[NSNull null]]) {
        return YES;
    }
    
    return NO;
}
@end
