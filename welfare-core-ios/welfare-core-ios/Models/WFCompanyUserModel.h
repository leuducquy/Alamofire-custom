//
//  CompanyUserModel.h
//  welfare-core-ios
//
//  Created by VietND on 7/11/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WFCompanyDeptModel.h"

@interface WFCompanyUserModel : NSObject

@property ( nonatomic) NSInteger userId;
@property ( strong,nonatomic) NSString* userName;
@property ( strong,nonatomic) NSString* userNameKana;
@property ( strong,nonatomic) NSString* userAccount;
@property ( strong,nonatomic) NSString* userMail;
@property ( strong,nonatomic) NSString* pathProfile;
@property ( strong,nonatomic) NSString* token;
@property ( strong,nonatomic) NSString* avatarPath;
@property ( nonatomic) BOOL adminFlag;
@property (nonatomic)NSInteger companyId;
@property (strong,nonatomic) WFCompanyDeptModel *dept;
@property (nonatomic,strong) NSString*passcode;

@property ( nonatomic) NSInteger deptBoardId;
-(id)initWithResponse:(NSDictionary*)responseObject;

@end
