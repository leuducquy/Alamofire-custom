//
//  WFConstants.m
//  welfare-core-ios
//
//  Created by AnhNC on 7/6/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFConstants.h"

@implementation WFConstants

NSString *const ITEM_TEXT_TYPE_TEXT=@"TEXT";
NSString *const ITEM_TEXT_TYPE_LOC=@"LOC";
NSString *const ITEM_FILE_TYPE_PHOTO=@"PHOTO";
NSString *const ITEM_FILE_TYPE_MOVIE=@"MOVIE";
NSString *const ITEM_FILE_TYPE_FILE=@"FILE";
NSString *const ITEM_TEXT_TYPE_ICON=@"ICON";

NSString *const WF_SERVICE_CD_MS=@"MS";
NSString *const WF_SERVICE_CD_DR=@"DR";

//returnCode
NSString *const WF_RETURNCODE_WF000=@"WF000"; //Invalid param
NSString *const WF_RETURNCODE_WF001=@"WF001"; //Invalid account -> signin
NSString *const WF_RETURNCODE_WF002=@"WF002"; //version is old
NSString *const WF_RETURNCODE_WF003=@"WF003"; //version is ols and need update

NSString *const WF_RETURNCODE_MS001=@"MS001"; //Dept is changed.-> go to my dept
NSString *const WF_RETURNCODE_MS002=@"MS002";// File has been deleted->go to previous screen
NSString *const WF_RETURNCODE_DR001=@"DR001"; // Dept is chaged -> refresh.

// Shift Working notice
NSString *const SW_NOTI_NEW_NOTICE = @"SW_NOTI_NEW_NOTICE";
NSString *const SW_NOTI_CHECK_IN = @"SW_NOTI_CHECK_IN";
NSString *const SW_NOTI_OVER_TIME = @"SW_NOTI_OVER_TIME";
NSString *const SW_UPDATE_SHIFT = @"SW_UPDATE_SHIFT";
NSString const *WFS_NOTICE_TYPE_MODIFY=@"MR";
NSString const *SW_NOTI_OFFER=@"SW_NOTI_OFFER";


@end
