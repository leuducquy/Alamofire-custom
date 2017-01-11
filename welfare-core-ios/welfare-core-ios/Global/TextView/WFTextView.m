//
//  WFTextView.m
//  welfare-core-ios
//
//  Created by VietND on 7/7/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFTextView.h"
#import "UIColor+Categories.h"

@interface WFTextView ()
@property(nonatomic) BOOL shouldDrawPlaceholder;
- (void)_updateShouldDrawPlaceholder;
- (void)_textChanged:(NSNotification *)notification;
@property(nonatomic, strong) UIColor *placeholderTextColor;
@end
@implementation WFTextView
- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupWFTextView];
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupWFTextView];
    }
    return self;
}

- (void)setupWFTextView {
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(_textChanged:)
     name:UITextViewTextDidChangeNotification
     object:self];
    self.placeholderTextColor = [UIColor colorWithHexString:@"#ccc"];
    _shouldDrawPlaceholder = NO;
}
- (void)setText:(NSString *)string {
    [super setText:string];
    [self _updateShouldDrawPlaceholder];
}

- (void)setPlaceholder:(NSString *)string {
    if ([string isEqual:_placeholder]) {
        return;
    }
    
    _placeholder = string;
    [self _updateShouldDrawPlaceholder];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    if (_shouldDrawPlaceholder) {
        [_placeholderTextColor set];
        
        NSDictionary *dictionary = [[NSDictionary alloc]
                                    initWithObjectsAndKeys:[UIFont systemFontOfSize:14.0f],
                                    NSFontAttributeName, self.placeholderTextColor,
                                    NSForegroundColorAttributeName, nil];
        
        UIEdgeInsets inset = [self textContainerInset];
        [_placeholder
         drawInRect:CGRectMake(
                               inset.left + 3.0, inset.top,
                               self.frame.size.width - inset.left - inset.right,
                               self.frame.size.height - inset.bottom - inset.top)
         withAttributes:dictionary];
    }
}

#pragma mark - NSObject

- (void)dealloc {
    [[NSNotificationCenter defaultCenter]
     removeObserver:self
     name:UITextViewTextDidChangeNotification
     object:self];
}

- (void)_updateShouldDrawPlaceholder {
    BOOL prev = _shouldDrawPlaceholder;
    _shouldDrawPlaceholder =
    self.placeholder && self.placeholderTextColor && self.text.length == 0;
    
    if (prev != _shouldDrawPlaceholder) {
        [self setNeedsDisplay];
    }
}

- (void)_textChanged:(NSNotification *)notification {
    [self _updateShouldDrawPlaceholder];
}

@end
