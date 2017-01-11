//
//  WFDatePickerView.m
//  Fukuri
//
//  Created by VietND on 11/25/16.
//  Copyright (c) 2015 Trente VietNam. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WFDatePickerViewDelegate;

@interface WFDatePickerView : UIView
@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) UIDatePicker *datePicker;
@property (strong, nonatomic) UIToolbar *toolBar;
@property (weak, nonatomic) id <WFDatePickerViewDelegate> delegate;

- (void)show;
@end

@protocol WFDatePickerViewDelegate <NSObject>
- (void)pickedDatePicker:(WFDatePickerView *)datePicker withDate:(NSDate *)date;
@optional
- (void)cancelDatePicker:(WFDatePickerView *)datePicker;
@end
