//
//  WFTextField.m
//  welfare-core-ios
//
//  Created by VietND on 7/11/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFTextField.h"

@implementation WFTextField

-(void)awakeFromNib {
    [super awakeFromNib];
    [self setupWFTextField];
    
}
-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupWFTextField];
    }
    return self;
}
-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupWFTextField];
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


-(void)setupWFTextField {
    self.placeholder = NSLocalizedString(self.placeholder, nil);
}

@end
