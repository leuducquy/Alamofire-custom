//
//  WFObjectModel.h
//  welfare-core-ios
//
//  Created by VietND on 11/25/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WFObjectModel : NSObject
@property (strong,nonatomic) NSString*key;
@property (strong,nonatomic) NSString*value;
-(instancetype)initWithDictionary:(NSDictionary*)dict;
@end
