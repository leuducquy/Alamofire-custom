//
//  WFButton.m
//  welfare-core-ios
//
//  Created by VietND on 7/7/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFButton.h"
#import "WFConstants.h"

@implementation WFButton

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */
- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupWFButton];
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupWFButton];
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupWFButton];
    }
    return self;
}
- (void)setupWFButton {
    // dismissKeyboard when click button
    [self addTarget:self
             action:@selector(dismissKeyboard:)
   forControlEvents:UIControlEventTouchUpInside];
}
- (void)dismissKeyboard:(id)sender {
    [KEYWINDOW endEditing:YES];
}

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if (highlighted) {
        self.alpha = 0.5;
    } else {
        if (self.isEnabled) {
            self.alpha = 1;
        }
    }
}
- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    if (selected) {
        self.alpha = 0.5;
    } else {
        if (self.isEnabled) {
            self.alpha = 1;
        }
    }
}
- (void)setEnabled:(BOOL)enabled {
    [super setEnabled:enabled];
    if (enabled) {
        [self setAlpha:1.0f];
        self.userInteractionEnabled = YES;
    }else{
        
        [self setAlpha:0.5f];
        self.userInteractionEnabled = NO;
        
        
    }
}
@end
