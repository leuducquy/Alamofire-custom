//
//  QKLocalizedButton.m
//  quicker-cl-ios
//
//  Created by Nguyen Huu Anh on 4/21/15.
//  Copyright (c) 2015 Trente VietNam. All rights reserved.
//

#import "LocalizedButton.h"

@implementation LocalizedButton

- (void)awakeFromNib {
    [super awakeFromNib];
    NSString *normalTitle = [self titleForState:UIControlStateNormal];
    [self setTitle:NSLocalizedString([self titleForState:UIControlStateNormal], nil)
          forState:UIControlStateNormal];
    if (![normalTitle isEqualToString:[self titleForState:UIControlStateHighlighted]]) {
        [self setTitle:NSLocalizedString([self titleForState:UIControlStateHighlighted], nil)
              forState:UIControlStateHighlighted];
    }
    
    if (![normalTitle isEqualToString:[self titleForState:UIControlStateDisabled]]) {
        [self setTitle:NSLocalizedString([self titleForState:UIControlStateDisabled], nil)
              forState:UIControlStateDisabled];
    }
    
    if (![normalTitle isEqualToString:[self titleForState:UIControlStateSelected]]) {
        [self setTitle:NSLocalizedString([self titleForState:UIControlStateSelected], nil)
              forState:UIControlStateSelected];
    }
    if (self.currentAttributedTitle!=nil) {
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithAttributedString:self.currentAttributedTitle];
        [attributedString.mutableString setString:NSLocalizedString(self.currentAttributedTitle.string, nil)];
        [self setAttributedTitle:attributedString forState:UIControlStateNormal];
        [self setAttributedTitle:attributedString forState:UIControlStateSelected];
        [self setAttributedTitle:attributedString forState:UIControlStateDisabled];
        
    }
   

    
}

@end
