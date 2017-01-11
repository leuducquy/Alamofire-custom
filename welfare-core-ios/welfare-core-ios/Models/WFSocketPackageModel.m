//
//  WFSocketPackageModel.m
//  welfare-core-ios
//
//  Created by VietND on 7/22/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFSocketPackageModel.h"
#import "NSDictionary+Categories.h"
#import "NSObject+ConvertToJson.h"

@implementation WFSocketPackageModel
-(instancetype)initWithResponse:(NSDictionary *)response {
    self = [super init];
    if(self) {
 
        self.socketType = [response stringForKey:@"socketType"];
        self.serviceCd = [response stringForKey:@"serviceCd"];
    }
    return self;
}

-(NSString*)toJson {
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    [dic setObject:self.socketType forKey:@"socketType"];
    [dic setObject:self.serviceCd forKey:@"serviceCd"];
    if(self.key){
    [dic setObject:self.key forKey:@"key"];
    }
    if(self.parentKey){
        [dic setObject:self.parentKey forKey:@"parentKey"];
    }
    if(self.fromUserKey){
        [dic setObject:self.fromUserKey forKey:@"fromUserKey"];
    }

    NSDictionary *json = [NSDictionary dictionaryWithObject:dic forKey:@"model"];
    
    return [json convertToJson];
}
@end
