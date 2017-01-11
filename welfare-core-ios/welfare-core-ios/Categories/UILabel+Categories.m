//
//  UILabel+Categories.m
//  quicker-cl-ios
//
//  Created by VietND on 3/9/16.
//  Copyright © 2016 Trente VietNam. All rights reserved.
//

#import "UILabel+Categories.h"

@implementation UILabel (Categories)
-(void)setAttributedString:(NSString*)string {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithAttributedString:self.attributedText];
    [attributedString.mutableString setString:string];
    self.attributedText = attributedString;
}
@end
