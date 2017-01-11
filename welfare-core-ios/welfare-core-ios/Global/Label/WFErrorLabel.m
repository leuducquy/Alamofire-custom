//
//  WFErrorLabel.m
//  welfare-core-ios
//
//  Created by VietND on 7/12/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFErrorLabel.h"

@implementation WFErrorLabel

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */
-(void)awakeFromNib {
    [super awakeFromNib];
    [self setupWFErrorLabel];
    
}
-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupWFErrorLabel];
    }
    return self;
}
-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupWFErrorLabel];
    }
    return self;
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */


-(void)setupWFErrorLabel {
    [self setTextColor:[UIColor colorWithHexString:@"##DF0101"]];
}


@end
