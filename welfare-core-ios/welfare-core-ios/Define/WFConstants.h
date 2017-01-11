//
//  WFConstants.h
//  welfare-core-ios
//
//  Created by AnhNC on 7/6/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>
// Main Screen

#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define KEYWINDOW [[[UIApplication sharedApplication] delegate] window]
#define APP_DELEGATE (AppDelegate *)[UIApplication sharedApplication].delegate
// RGB Color
#define RGBA(r, g, b, a)                                                       \
[UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:a]
#define RGB(r, g, b) RGBA(r, g, b, 1.0f)

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)

//IOS version
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

#define NO_HEADER_TABLEVIEW_VALUE 0.000001f
#define DEFAUT_HEIGHT_CELL 44.0f
// Date Color
#define mainDailyColor RGB(158, 4, 17)
#define sundayBackgroundColor RGB(248, 206, 204)
#define saturdayBackgroundColor RGB(212, 225, 245)
#define sundayTextColor RGB(227, 57, 51)
#define saturdayTextColor RGB(85, 138, 214)
#define sundayDayBackgroundColor RGB(234, 107, 102)
#define saturdayDayBackgroundColor RGB(83, 137, 214)
#define holidayColor RGB(238, 118, 0)
// Network
#define RESPONE_SUCCESS [responseObject[@"status"] isEqual:@"OK"]

// Version
#define APP_CURRENT_VERSION                                                    \
[[NSBundle mainBundle]                                                       \
objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey]

#define ShowNetworkActivityIndicator()                                         \
[UIApplication sharedApplication].networkActivityIndicatorVisible = YES
#define HideNetworkActivityIndicator()                                         \
[UIApplication sharedApplication].networkActivityIndicatorVisible = NO
@interface WFConstants : NSObject

extern NSString *const ITEM_TEXT_TYPE_TEXT;
extern NSString *const ITEM_TEXT_TYPE_LOC;
extern NSString *const ITEM_FILE_TYPE_PHOTO;
extern NSString *const ITEM_FILE_TYPE_MOVIE;
extern NSString *const ITEM_FILE_TYPE_FILE;
extern NSString *const ITEM_TEXT_TYPE_ICON;
extern NSString *const WF_SERVICE_CD_MS;
extern NSString *const WF_SERVICE_CD_DR;

// returnCode
extern NSString *const WF_RETURNCODE_WF000; // Invalid param
extern NSString *const WF_RETURNCODE_WF001; // Invalid account -> signin
extern NSString *const WF_RETURNCODE_WF002; // version is old
extern NSString *const WF_RETURNCODE_WF003; // version is ols and need update

extern NSString *const WF_RETURNCODE_MS001; // Dept is changed.-> go to my dept
extern NSString *const WF_RETURNCODE_MS002; // File has been deleted->go to previous screen

extern NSString *const SW_NOTI_NEW_NOTICE;
extern NSString *const SW_NOTI_CHECK_IN;
extern NSString *const SW_NOTI_OVER_TIME;
extern NSString *const SW_UPDATE_SHIFT;
extern NSString const *WFS_NOTICE_TYPE_MODIFY;
extern NSString const *SW_NOTI_OFFER;

extern NSString *const WF_RETURNCODE_DR001; // Dept is chaged -> refresh.

// requestTypeMap
extern NSString *const  BUG ;
extern NSString *const IMPROVE;


//serviceTypeMap
extern NSString *const  SHIFT ;
extern NSString *const THANKS;
extern NSString *const  DAILY ;
extern NSString *const MESSAGE;
extern NSString *const FUKURI;
extern NSString *const  SHIFTVALUE  ;
extern NSString *const THANKSVALUE ;
extern NSString *const  DAILYVALUE ;
extern NSString *const MESSAGEVALUE ;
extern NSString *const FUKURIVALUE ;
+ (NSDictionary *)requestTypeMap;
+ (NSDictionary *)serviceTypeMap;
+ (NSDictionary *)serviceTypeGetvalue;
+ (NSArray *)serviceArray;

@end
