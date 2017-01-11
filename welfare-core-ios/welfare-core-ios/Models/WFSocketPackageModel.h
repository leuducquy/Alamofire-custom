//
//  WFSocketPackageModel.h
//  welfare-core-ios
//
//  Created by VietND on 7/22/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MS_SOCKET_MESSAGE_SEND @"MS_SOCKET_MESSAGE_SEND";

#define	DR_SOCKET_REPORT_ADD		 @"DR_SOCKET_REPORT_ADD";
#define	DR_SOCKET_REPORT_LIKE		 @"DR_SOCKET_REPORT_LIKE";
#define	DR_SOCKET_REPORT_COMMENT	 @"DR_SOCKET_REPORT_COMMENT";
#define	DR_SOCKET_REPORT_CHECKED	 @"DR_SOCKET_REPORT_CHECKED";
@interface WFSocketPackageModel : NSObject

@property (strong,nonatomic) NSString *socketType;
@property (strong,nonatomic) NSString *serviceCd;
@property (strong,nonatomic) NSString *key;
@property (strong,nonatomic) NSString *parentKey;
@property (strong,nonatomic) NSString *fromUserKey;

-(instancetype)initWithResponse:(NSDictionary *)response;
-(NSString*)toJson;
@end
