//
//  NSMutableDictionary+Categories.m
//  welfare-core-ios
//
//  Created by VietND on 7/7/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "NSMutableDictionary+Categories.h"
#import "WFUserDefaults.h"
#define kWFServiceCdShift @"SW"
#define kWFServiceCdShiftWorkingReception @"SW"
#define kWFServiceCdMessage @"MS"
#define kWFServiceCdDailyReport @"DR"
#define kWFServiceCdThankcard @"TC"
@implementation NSMutableDictionary (Categories)


+ (NSMutableDictionary*)initParams {
    NSMutableDictionary *dic = [NSMutableDictionary new];
    
    [dic setObject:[WFUserDefaults getUserId] forKey:@"loginUserId"];
    [dic setObject:[WFUserDefaults getCompanyId] forKey:@"companyId"];
    NSString *accessToken = [WFUserDefaults getToken];
    if (accessToken) {
        [dic setObject:accessToken forKey:@"token"];
    }
    [dic setObject:@"I" forKey:@"deviceType"];
    [dic setObject:[NSTimeZone localTimeZone].name forKey:@"timezone"];
    NSString *language = [[[NSBundle mainBundle] preferredLocalizations] objectAtIndex:0];
    [dic setObject:language forKey:@"language"];
    [dic setObject:[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"] forKey:@"version"];
    
    return dic;
}
+ (id)initParamsMS {
    NSMutableDictionary *dic = [self initParams];
    [dic setObject:kWFServiceCdMessage forKey:@"serviceCd"];
    return dic;
}
+(id)initParamsSF {
    NSMutableDictionary *dic = [self initParams];
    [dic setObject: kWFServiceCdShift forKey:@"serviceCd"];
    return dic;
}
+ (id)initParamsDR {
    NSMutableDictionary *dic = [self initParams];
    [dic setObject:kWFServiceCdDailyReport forKey:@"serviceCd"];
    return dic;
}
+ (id)initParamsTC {
    NSMutableDictionary *dic = [self initParams];
    [dic setObject:kWFServiceCdThankcard forKey:@"serviceCd"];
    return dic;
}
+(id)initParamsSWR {
    NSMutableDictionary *dic = [self initParams];
    [dic setObject: kWFServiceCdShiftWorkingReception forKey:@"serviceCd"];
    return dic;
}
@end
