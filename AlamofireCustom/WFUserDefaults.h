//
//  WFUserDefaults.h
//  welfare-core-ios
//
//  Created by VietND on 7/7/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WFUserDefaults : NSObject
+ (void)set:(NSString *)key withValue:(NSString *)val;
+ (NSString *)get:(NSString *)key;

+ (void)clear;

+ (void)setUserId:(NSString *)val;
+ (NSString *)getUserId;

+ (void)setDeptId:(NSString *)val;
+ (NSString *)getDeptId;

+ (void)setDeptName:(NSString *)val;
+ (NSString *)getDeptName;

+ (void)setCompanyId:(NSString *)val;
+ (NSString *)getCompanyId;

+ (void)setToken:(NSString *)val;
+ (NSString *)getToken;

+ (void)setDeviceToken:(NSString *)val;
+ (NSString *)getDeviceToken;

+ (void)setUserPermission:(BOOL)val;
+ (BOOL)getUserPermission;

+ (void)setUserName:(NSString *)val;
+ (NSString *)getUserName;

+ (void)setUserAccount:(NSString *)val;
+ (NSString *)getUserAccount;

+ (void)setUserNameKana:(NSString *)val;
+ (NSString *)getUserNameKana;

+ (void)setUserMail:(NSString *)val;
+ (NSString *)getUserMail;

+ (void)setUserProfile:(NSString *)val;
+ (NSString *)getUserProfile;

+ (void)setMaxFileSize:(NSString *)val;
+ (NSString *)getMaxFileSize;
@end
