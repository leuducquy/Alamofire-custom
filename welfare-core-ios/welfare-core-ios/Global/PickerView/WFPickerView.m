//
//  WFPickerView.m
//  DailyReport
//
//  Created by C Anh on 2/16/16.
//  Copyright © 2016 TRENTE. All rights reserved.
//

#import "WFPickerView.h"
#import "WFConstants.h"
#import "UIFont+Categories.h"
@interface WFPickerView ()
@property (strong, nonatomic) UIWindow *keyWindow;
@end
@implementation WFPickerView

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
    [self addPickerView];
    [self addToolbar];
}

- (void)addToolbar {
    _toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y + self.frame.size.height - self.pickerView.frame.size.height - 44, self.frame.size.width, 44)];
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

- (void)addPickerView {
    self.pickerView = [[UIPickerView alloc]init];
    self.pickerView.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y + self.frame.size.height - self.pickerView.frame.size.height, self.frame.size.width, self.pickerView.frame.size.height);
    
    self.pickerView.delegate = self;
    self.pickerView.backgroundColor = [UIColor colorWithRed:244.0 / 255.0 green:250.0 / 255.0 blue:250.0 / 255.0 alpha:1.0];
    
    [self addSubview:self.pickerView];
}

- (void)show {
    [self.pickerView reloadAllComponents];
    if (_selectedIndex >= 0 && _selectedIndex < self.pickerData.count) {
        [self.pickerView selectRow:_selectedIndex inComponent:0 animated:NO];
    }
    [_keyWindow addSubview:self];
    self.alpha = 0;
    [UIView animateWithDuration:.2 animations: ^{
        self.alpha = 1;
    }];
    [KEYWINDOW endEditing:YES];
    
}

- (void)hide {
    [self removeFromSuperview];
}

- (void)cancel:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(cancelPickerView:)]) {
        [self.delegate cancelPickerView:self];
    }
    [self hide];
}

- (void)done:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(donePickerView:selectedIndex:)]) {
        self.isSelected = YES;
        [self.delegate donePickerView:self selectedIndex:[self.pickerView selectedRowInComponent:0]];
    }
    [self hide];
}

#pragma mark - Handle Action In View

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (!([[touches anyObject] view] == _toolBar)) {
        [self hide];
    }
}

#pragma mark PickerView DataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// The number of columns of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return _pickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return _pickerData[row];
}
//-(UIView*)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
//    UILabel* tView = (UILabel*)view;
//    if (!tView)
//    {
//        tView = [[UILabel alloc] init];
//        [tView setFont:[UIFont normalFont]];
//        [tView setTextAlignment:NSTextAlignmentCenter];
//    }
//    // Fill the label text here
//    tView.text=_pickerData[row];
//    return tView;
//}
@end
