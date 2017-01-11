//
//  NSObject+ConvertToJson.m
//  welfare-core-ios
//
//  Created by VietND on 7/22/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "NSObject+ConvertToJson.h"

@implementation NSObject (ConvertToJson)
-(NSString*)convertToJson {
    NSError *writeError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&writeError];
    NSString *result = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    return result;
}
@end
