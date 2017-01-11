//
//  CIDateUtil.m
//  welfare-core-ios
//
//  Created by takano.yasuhiro on 10/27/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "CIDateUtil.h"

@implementation CIDateUtil


+ (NSDate *)offsetMonth:(NSDate *)date offset:(NSInteger)offsetValue{
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *comp = [[NSDateComponents alloc] init];
    comp.month = offsetValue;
    
    NSDate *result = [calendar dateByAddingComponents:comp toDate:date options:0];
   
    return result;
    
}
+ (NSDate *)offsetDay:(NSDate *)date offset:(NSInteger)offsetValue{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *comp = [[NSDateComponents alloc] init];
    comp.day = offsetValue;
    
    NSDate *result = [calendar dateByAddingComponents:comp toDate:date options:0];
   
    return result;
}


@end
