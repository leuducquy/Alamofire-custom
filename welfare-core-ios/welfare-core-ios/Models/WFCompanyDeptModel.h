//
//  WFCompanyDeptModel.h
//  Messenger
//
//  Created by Quy on 7/12/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WFCompanyDeptModel : NSObject

@property (strong,nonatomic) NSString *deptName;
@property (strong,nonatomic) NSString *key;
@property (strong,nonatomic) NSMutableArray *members;

-(instancetype)initWithResponse:(NSDictionary*)response;
@end
