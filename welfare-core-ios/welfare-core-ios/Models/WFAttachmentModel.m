//
//  WFAttachmentModel.m
//  welfare-core-ios
//
//  Created by VietND on 7/18/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFAttachmentModel.h"
#import "NSDictionary+Categories.h"
#import "NSObject+ConvertToJson.h"

@implementation WFAttachmentModel
-(instancetype)initWithResponse:(NSDictionary *)response {
    self = [super init];
    if(self) {
        self.key = [response stringForKey:@"key"];
        self.service = [response stringForKey:@"service"];
        self.fileType = [response stringForKey:@"fileType"];
        self.fileName = [response stringForKey:@"fileName"];
        self.fileUrl = [response stringForKey:@"fileUrl"];
    
    }
    return self;
}

@end
