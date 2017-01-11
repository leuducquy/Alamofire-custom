//
//  KeyboardHandler.m
//  BubbleShot-ios
//
//  Created by Viet on 1/17/15.
//  Copyright (c) 2015 Trente. All rights reserved.
//

#import "CCKeyboardHandler.h"

@interface CCKeyboardHandler ()
@property (nonatomic) CGRect frame;
@property (nonatomic) NSInteger bias;
@end

@implementation CCKeyboardHandler
- (id)init {
    self = [super init];
    if (self) {
        [self initialization];
        self.bias = 0;
    }
    
    return self;
}

- (id)initWithBias:(NSInteger)bias {
    self = [super init];
    if (self) {
        [self initialization];
        self.bias = bias;
    }
    
    return self;
}

- (void)initialization {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)keyboardWillShow:(NSNotification *)notification {
    CGRect oldFrame = self.frame;
    [self retrieveFrameFromNotification:notification];
    
    if (oldFrame.size.height != self.frame.size.height) {
        CGSize delta = CGSizeMake(self.frame.size.width - oldFrame.size.width,
                                  self.frame.size.height - oldFrame.size.height);
        if (self.delegate)
            [self notifySizeChanged:delta notification:notification];
    }
}

- (void)keyboardWillHide:(NSNotification *)notification {
    if (self.frame.size.height > 0.0) {
        [self retrieveFrameFromNotification:notification];
        CGSize delta = CGSizeMake(-self.frame.size.width, -self.frame.size.height);
        
        if (self.delegate)
            [self notifySizeChanged:delta notification:notification];
    }
    
    self.frame = CGRectZero;
}

- (void)retrieveFrameFromNotification:(NSNotification *)notification {
    CGRect keyboardRect = [[[notification userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    keyboardRect.size.height -= self.bias;
    self.frame = [[UIApplication sharedApplication].keyWindow.rootViewController.view convertRect:keyboardRect fromView:[UIApplication sharedApplication].keyWindow.rootViewController.view];
}

- (void)notifySizeChanged:(CGSize)delta notification:(NSNotification *)notification {
    NSDictionary *info = [notification userInfo];
    
    UIViewAnimationCurve curve;
    [[info objectForKey:UIKeyboardAnimationCurveUserInfoKey] getValue:&curve];
    
    NSTimeInterval duration;
    [[info objectForKey:UIKeyboardAnimationDurationUserInfoKey] getValue:&duration];
    
    void (^action)(void) = ^{
        if (self.delegate) {
            [self.delegate keyboardSizeChanged:delta];
        }
    };
    
    [UIView animateWithDuration:duration
                          delay:0.0
                        options:UIViewAnimationOptionLayoutSubviews
                     animations:action
                     completion:nil];
}

@end
