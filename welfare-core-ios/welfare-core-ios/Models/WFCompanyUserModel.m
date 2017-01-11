//
//  CompanyUserModel.m
//  welfare-core-ios
//
//  Created by VietND on 7/11/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFCompanyUserModel.h"
#import "NSDictionary+Categories.h"
#import "NSString+Categories.h"
#import "NSObject+ConvertToJson.h"

@implementation WFCompanyUserModel
-(id)initWithResponse:(NSDictionary*)responseObject {
    self = [super init];
    if (self) {
        self.companyId = [responseObject intForKey:@"companyId"];
        self.userId = [responseObject intForKey:@"key"];
        self.userName = [responseObject stringForKey:@"userName"];
        
        self.userNameKana = [responseObject stringForKey:@"userNameKana"];
        self.userAccount = [responseObject stringForKey:@"userAccount"];
        self.userMail = [responseObject stringForKey:@"userMail"];
        self.deptBoardId = [responseObject intForKey:@"deptBoardId"];
        self.adminFlag = [responseObject boolForKey:@"adminFlag"];
        self.dept = [[WFCompanyDeptModel alloc]initWithResponse:responseObject[@"dept"]];
        self.pathProfile = [responseObject stringForKey:@"pathProfile"];
        self.token =[responseObject stringForKey:@"token"];
        self.avatarPath = [responseObject stringForKey:@"avatarPath"];
        self.passcode = [responseObject stringForKey:@"passcode"];
    }
    return self;
}

@end
