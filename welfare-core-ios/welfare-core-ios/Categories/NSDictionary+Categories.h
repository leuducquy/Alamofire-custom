//
//  NSDictionary+Categories.h
//  quicker-cl-ios
//
//  Created by Nguyen Huu Anh on 5/13/15.
//  Copyright (c) 2015 Trente VietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Categories)
- (NSDate *)dateForKey:(NSString *)key format:(NSString *)format;
- (NSDate *)unixDateForKey:(NSString *)key;
- (NSString *)stringForKey:(NSString *)key;
- (NSURL *)urlForKey:(NSString *)key;
- (NSInteger)intForKey:(NSString *)key;
- (BOOL)boolForKey:(NSString *)key;
- (double)doubleForKey:(NSString *)key;
- (float)floatForKey:(NSString *)key;
- (NSNumber *)numberForKey:(NSString *)key;
- (NSDecimalNumber *)decimalNumberForKey:(NSString *)key;
- (id)notNullObjectForKey:(id)key;
@end
