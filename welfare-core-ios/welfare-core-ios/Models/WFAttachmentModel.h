//
//  WFAttachmentModel.h
//  welfare-core-ios
//
//  Created by VietND on 7/18/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WFAttachmentModel : NSObject

@property (strong,nonatomic) NSString *service;
@property (strong,nonatomic) NSString *key;
@property (strong,nonatomic) NSString *fileType;
@property (strong,nonatomic) NSString *fileName;
@property (strong,nonatomic) NSString *fileUrl;

-(instancetype)initWithResponse:(NSDictionary*)response;
@end
