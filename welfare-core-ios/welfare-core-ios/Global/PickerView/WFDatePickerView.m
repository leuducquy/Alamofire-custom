//
//  WFDatePickerView.m
//  Fukuri
//
//  Created by VietND on 11/25/16.
//  Copyright (c) 2015 Trente VietNam. All rights reserved.
//

#import "WFDatePickerView.h"
#import "WFButton.h"

@interface WFDatePickerView ()

@property (strong, nonatomic) UIWindow *keyWindow;

@end

@implementation WFDatePickerView
- (id)init {
    self = [super init];
    if (self) {
        [self initialization];
    }
    return self;
}

- (void)initialization {
    self.keyWindow = [[UIApplication sharedApplication] keyWindow];
    self.frame = self.keyWindow.frame;
    self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
    [self addDatePicker];
    [self addToolbar];
}

- (void)addToolbar {
    _toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y + self.frame.size.height - self.datePicker.frame.size.height - 44, self.frame.size.width, 44)];
    _toolBar.barStyle = UIBarStyleDefault;
    _toolBar.backgroundColor = [UIColor whiteColor];
    
    UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    UIBarButtonItem *leftFixedSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    leftFixedSpace.width = 15;
    UIBarButtonItem *rightFixedSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    rightFixedSpace.width = 15;
       
    UIBarButtonItem *cancelBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel:)];
    [cancelBarButton setTintColor:[UIColor colorWithRed:79.0 / 255.0 green:88.0 / 255.0 blue:104.0 / 255.0 alpha:1]];
    UIBarButtonItem *doneBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done:)];
    [doneBarButton setTintColor:[UIColor colorWithRed:79.0 / 255.0 green:88.0 / 255.0 blue:104.0 / 255.0 alpha:1]];
    
    [_toolBar setItems:[NSArray arrayWithObjects:leftFixedSpace, cancelBarButton, flexibleSpace, doneBarButton, rightFixedSpace, nil]];
    [self addSubview:_toolBar];
}

- (void)addDatePicker {
    self.datePicker = [[UIDatePicker alloc]init];
    self.datePicker.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y + self.frame.size.height - self.datePicker.frame.size.height, self.frame.size.width, self.datePicker.frame.size.height);
    [self.datePicker setDatePickerMode:UIDatePickerModeTime];
    self.datePicker.backgroundColor = [UIColor colorWithRed:244.0 / 255.0 green:250.0 / 255.0 blue:250.0 / 255.0 alpha:1.0];
    [self addSubview:self.datePicker];
}
- (NSDate*)clampDate:(NSDate *)dt toMinutes:(NSInteger)minutes {
    NSInteger referenceTimeInterval = (int)[dt timeIntervalSinceReferenceDate];
    NSInteger remainingSeconds = referenceTimeInterval % (minutes*60);
    NSInteger timeRoundedTo5Minutes = referenceTimeInterval - remainingSeconds;
    if(remainingSeconds>((minutes*60)/2)) {/// round up
        timeRoundedTo5Minutes = referenceTimeInterval +((minutes*60)-remainingSeconds);
    }
    return [NSDate dateWithTimeIntervalSinceReferenceDate:(NSTimeInterval)timeRoundedTo5Minutes];
}
- (void)show {
    if (_date != nil) {
        [self.datePicker setDate:[self clampDate:_date toMinutes:self.datePicker.minuteInterval]];

    }
    [_keyWindow addSubview:self];
    self.alpha = 0;
    [UIView animateWithDuration:.2 animations: ^{
        self.alpha = 1;
    }];
}

- (void)hide {
    [self removeFromSuperview];
}

- (void)cancel:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(cancelDatePicker:)]) {
        [self.delegate cancelDatePicker:self];
    }
    [self hide];
}

- (void)done:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(pickedDatePicker:withDate:)]) {
        
        [self.delegate pickedDatePicker:self withDate:self.datePicker.date];
    }
    [self hide];
}

#pragma mark - Handle Action In View

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (!([[touches anyObject] view] == _toolBar)) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(pickedDatePicker:withDate:)]) {
            
            [self.delegate pickedDatePicker:self withDate:self.datePicker.date];
        }
        [self hide];
    }
}

@end
