//
//  QKLocalizedLabel.m
//  quicker-cl-ios
//
//  Created by Nguyen Huu Anh on 4/21/15.
//  Copyright (c) 2015 Trente VietNam. All rights reserved.
//

#import "LocalizedLabel.h"
#import "UILabel+Categories.h"

@implementation LocalizedLabel

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setAttributedString: NSLocalizedString(self.text, nil)];
    
//    self.text = NSLocalizedString(self.text, nil);
}

@end
