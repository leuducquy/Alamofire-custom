
//
//  WFUserDefaults.m
//  welfare-core-ios
//
//  Created by VietND on 7/7/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFUserDefaults.h"

@implementation WFUserDefaults
+ (void)set:(NSString *)key withValue:(NSString *)val {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:val forKey:key];
    [ud synchronize];
}
+ (NSString *)get:(NSString *)key {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSString *val = [ud stringForKey:key];
    if (val) {
        return val;
    }
    else {
        return @"";
    }
}
+ (void)clear {
    [self setUserId:@""];
    [self  setCompanyId:@""];
    [self setToken:@""];
    [self setUserPermission:NO];
    [self setUserName:@""];
    [self setMaxFileSize:@""];
   // [self setUserAccount:@""];
}
+ (void)setUserAccount:(NSString *)val{
    [self set:@"WF_USER_ACCOUNT" withValue:val];
}
+ (NSString *)getUserAccount{
     return [self get:@"WF_USER_ACCOUNT"];
}
+ (void)setUserId:(NSString *)val {
    [self set:@"WF_USER_ID" withValue:val];
}

+ (NSString *)getUserId {
    return [self get:@"WF_USER_ID"];
}
+ (void)setDeptId:(NSString *)val {
    [self set:@"WF_DEPT_ID" withValue:val];
}

+ (NSString *)getDeptId {
    return [self get:@"WF_DEPT_ID"];
}
+ (void)setDeptName:(NSString *)val {
    [self set:@"WF_DEPT_NAME" withValue:val];
}

+ (NSString *)getDeptName {
    return [self get:@"WF_DEPT_NAME"];
}
+ (void)setCompanyId:(NSString *)val {
    [self set:@"WF_COMPANY_ID" withValue:val];
}

+ (NSString *)getCompanyId {
    return [self get:@"WF_COMPANY_ID"];
}

+ (void)setToken:(NSString *)val {
    [self set:@"WF_USER_TOKEN" withValue:val];
}

+ (NSString *)getToken {
    return [self get:@"WF_USER_TOKEN"];
}

+ (void)setDeviceToken:(NSString *)val {
    [self set:@"WF_DEVICE_TOKEN" withValue:val];
}

+ (NSString *)getDeviceToken {
    return [self get:@"WF_DEVICE_TOKEN"];
}

+ (void)setUserPermission:(BOOL)val {
    if (val) {
        [self set:@"WF_USER_PERMISSION" withValue:@"true"];
    }else{
        [self set:@"WF_USER_PERMISSION" withValue:@"false"];
    }
    
}
+ (BOOL)getUserPermission {
    return [[self get:@"WF_USER_PERMISSION"] isEqualToString:@"true"];
}

+ (void)setUserName:(NSString *)val {
    [self set:@"WF_USER_NAME" withValue:val];
}

+ (NSString *)getUserName {
    return [self get:@"WF_USER_NAME"];
}

+ (void)setUserNameKana:(NSString *)val {
    [self set:@"WF_USER_NAME_KANA" withValue:val];
}

+ (NSString *)getUserNameKana {
    return [self get:@"WF_USER_NAME_KANA"];
}

+ (void)setUserProfile:(NSString *)val {
    [self set:@"WF_USER_PROFILE" withValue:val];
}

+ (NSString *)getUserProfile {
    return [self get:@"WF_USER_PROFILE"];
}

+ (void)setUserMail:(NSString *)val {
    [self set:@"WF_USER_MAIL" withValue:val];
}

+ (NSString *)getUserMail {
    return [self get:@"WF_USER_MAIL"];
}

+ (void)setMaxFileSize:(NSString *)val {
    [self set:@"WF_MAX_FILE_SIZE" withValue:val];
}

+ (NSString *)getMaxFileSize {
    return [self get:@"WF_MAX_FILE_SIZE"];
}

@end
