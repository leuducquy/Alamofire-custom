//
//  WFObjectModel.m
//  welfare-core-ios
//
//  Created by VietND on 11/25/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFObjectModel.h"
#import "NSDictionary+Categories.h"
@implementation WFObjectModel
-(instancetype)initWithDictionary:(NSDictionary*)dict{
    self = [super init];
    if (self) {
        self.key = [dict stringForKey:@"key"];
        self.value = [dict stringForKey:@"value"];
    }
    return  self;
}
@end
