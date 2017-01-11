//
//  NSString+Categories.h
//  chiase-ios-core
//
//  Created by Vietnd on 7/11/15.
//  Copyright (c) 2015 Trente VietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Categories)
+ (NSString *)stringFromConst:(const NSString*)constant;
+ (NSString *)stringFromInteger:(NSInteger)constant;
+ (NSString *)getDateFromString:(NSString *)dateString format:(NSString *)formatString ;
+ (NSString *)getTimeString:(NSString *)dateString format:(NSString *)formatString;
   + (NSString *)langFromLocale:(NSString *)locale;
+ (NSString *)getFullTimeString:(NSString *)dateString format:(NSString *)formatString;
//- (NSString *)stringByTrimmingLeadingCharactersInSet:(NSCharacterSet *)characterSet ;


- (NSString *)stringByTrimmingLeadingWhitespaceAndNewlineCharacters ;
 
//- (NSString *)stringByTrimmingTrailingCharactersInSet:(NSCharacterSet *)characterSet ;
- (NSString *)stringByTrimmingTrailingWhitespaceAndNewlineCharacters;
 - (BOOL)isEmpty;
@end
