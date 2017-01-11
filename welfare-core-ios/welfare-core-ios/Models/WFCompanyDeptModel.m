//
//  WFMDeptModel.m
//  Messenger
//
//  Created by Quy on 7/12/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFCompanyDeptModel.h"
#import "NSDictionary+Categories.h"
#import "WFCompanyUserModel.h"

@implementation WFCompanyDeptModel
-(instancetype)initWithResponse:(NSDictionary *)response {
    self = [super init];
    if(self) {
        self.deptName = [response stringForKey:@"deptName"];
        self.key = [response stringForKey:@"key"];
        self.members  = [[NSMutableArray alloc]init];
        for (NSDictionary*dic in response[@"members"]) {
            WFCompanyUserModel *user = [[WFCompanyUserModel alloc]initWithResponse:dic];
            [self.members addObject:user];
        }
        
    }
    return self;
}
@end
