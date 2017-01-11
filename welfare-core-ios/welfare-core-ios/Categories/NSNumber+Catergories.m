//
//  NSNumber+Catergories.m
//  welfare-core-ios
//
//  Created by Quy on 11/25/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "NSNumber+Catergories.h"

@implementation NSNumber (Catergories)
-(NSString*)convertToCurrency{
    NSNumberFormatter *fmt = [[NSNumberFormatter alloc] init];
    fmt.numberStyle = NSNumberFormatterCurrencyStyle;
    fmt.currencyCode = @"JPY";
    [fmt setCurrencySymbol:@""];
    fmt.locale =[NSLocale localeWithLocaleIdentifier:@"ja_JP"];
  
    return  [fmt stringFromNumber:self];
}
@end
