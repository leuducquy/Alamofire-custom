//
//  KeyboardHandler.h
//  BubbleShot-ios
//
//  Created by Viet on 1/17/15.
//  Copyright (c) 2015 Trente. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CCKeyboardHandlerDelegate
@optional
- (void)keyboardSizeChanged:(CGSize)delta;
@end

@interface CCKeyboardHandler : NSObject

- (id)initWithBias:(NSInteger)bias;
@property (nonatomic, weak) id <CCKeyboardHandlerDelegate> delegate;
@end
