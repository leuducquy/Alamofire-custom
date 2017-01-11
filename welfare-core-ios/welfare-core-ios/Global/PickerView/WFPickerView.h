//
//  WFPickerView.h
//  DailyReport
//
//  Created by C Anh on 2/16/16.
//  Copyright © 2016 TRENTE. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WFPickerViewDelegate;

@interface WFPickerView : UIView <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) id <WFPickerViewDelegate> delegate;
@property (nonatomic) NSInteger selectedIndex;
@property (strong, nonatomic) NSArray *pickerData;
@property (strong, nonatomic) UIPickerView *pickerView;
@property (strong, nonatomic) UIToolbar *toolBar;
@property (nonatomic) BOOL isSelected;
- (void)show;
- (void) hide;
@end


@protocol WFPickerViewDelegate <NSObject>

- (void)donePickerView:(WFPickerView *)pickerView selectedIndex:(NSInteger)selectedIndex;

@optional
- (void)cancelPickerView:(WFPickerView *)pickerView;
@end
