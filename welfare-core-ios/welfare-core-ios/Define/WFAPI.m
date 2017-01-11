//
//  WFAPI.m
//  welfare-core-ios
//
//  Created by AnhNC on 7/6/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import "WFAPI.h"

@implementation WFAPI
NSString const *WF_URL_SIGN_IN = BASE_URL @"/api/account/signin";
NSString const *WF_URL_SIGN_OUT = BASE_URL @"/api/account/signout";
NSString const *WF_URL_LIST_COMPANY = BASE_URL @"/api/account/company";
NSString const *WF_URL_RP_UPDATE_INFO =
BASE_URL @"/api/account/info/updateAvatar";
NSString const *WF_URL_ACCOUNT_INFO = BASE_URL @"/api/account/info/detail";
NSString const *WF_URL_ACCOUNT_INFO_MEMBER = BASE_URL @"/api/account/info/member";
NSString const *WF_URL_ACCOUNT_CHANGE_PASS =
BASE_URL @"/api/account/info/updateInfo";
NSString const *WF_URL_ACCOUNT_CHANGE_PUSH =
BASE_URL @"/api/account/info/setting";
NSString const *WF_URL_DEVICE_CLEAR =
BASE_URL @"/api/device/clear";
NSString const *WF_URL_DEVICE_UPDATE =
BASE_URL @"/api/device/update";
NSString const *WF_URL_ACCOUNT_INFOR_REQUEST = BASE_URL @"/api/account/info/request/update";
NSString const *WF_URL_ACCOUNT_INFOR_REQUEST_FORM = BASE_URL @"/api/account/info/request/form";
// Report
NSString const *WF_URL_RP_REPORT_LIST = BASE_URL @"/api/report/list/myself";
NSString const *WF_URL_RP_OTHER_REPORT_LIST =
BASE_URL @"/api/report/list/others";
NSString const *WF_URL_RP_REPORT_DETAIL = BASE_URL @"/api/report/detail";
NSString const *WF_URL_RP_REPORT_UPDATE = BASE_URL @"/api/report/update";
NSString const *WF_URL_RP_REPORT_LIKE = BASE_URL @"/api/report/like";
NSString const *WF_URL_RP_REPORT_COMMENT = BASE_URL @"/api/report/comment";
NSString const *WF_URL_RP_ACTIVITY = BASE_URL @"/api/report/activity";
NSString const *WF_URL_DR_REPORT_GRAPH = BASE_URL @"/api/report-graph/rate";

// Message
NSString const *WF_URL_MS_MESSAGE_LIST = BASE_URL @"/api/message/list";
NSString const *WF_URL_MS_MESSAGE_BOARD = BASE_URL @"/api/message/board";
NSString const *WF_URL_MS_MESSAGE_UPDATE = BASE_URL @"/api/message/update";
NSString const *WF_URL_MS_MESSAGE_DETAIL = BASE_URL @"/api/message/detail";
NSString const *WFM_URL_MS_MESSAGE_COMMENT = BASE_URL @"/api/message/comment";
NSString const *WFM_URL_MS_MESSAGE_LIKE = BASE_URL @"/api/message/like";
NSString const *WFM_URL_MS_MESSAGE_LASTEST = BASE_URL @"/api/message/latest";
NSString const *WFM_URL_MS_MESSAGE_COMMENT_LASTEST =
BASE_URL @"/api/message/comment/lastest";
NSString const *WFM_URL_MS_MESSAGE_NOTE_DETAIL =
BASE_URL @"/api/message/note/detail";
NSString const *WFM_URL_MS_MESSAGE_NOTE_UPDATE =
BASE_URL @"/api/message/note/update";
NSString const *WFM_URL_MS_NOTE_COPY = BASE_URL @"/api/message/note/copy";
NSString const *WFM_URL_MS_MESSAGE_DELETE = BASE_URL @"/api/message/delete";
// Contact
NSString const *WFM_URL_MS_CONTACT_LIST = BASE_URL @"/api/message/contact/list";
NSString const *WFM_URL_MS_CONTACT_ADD =
BASE_URL @"/api/message/contact/update";

// SERVICE OF TERMS
NSString const *WF_URL_SERVICE_OF_TERMS = BASE_URL @"/use_policy";
NSString const *WF_URL_PRIVACY_POLICY = BASE_URL @"/privacy_policy";
NSString const *WF_URL_FORGET_PASS = BASE_URL @"/forgotPass";


// Thank card
NSString const *TC_URL_SIGN_IN = BASE_URL @"/thankscard/api/signIn";

NSString const *TC_URL_CHANGE_PASS = BASE_URL @"/thankscard/api/passChange";
NSString const *TC_URL_LOGIN_INFO = BASE_URL @"/thankscard/api/getLoginInfo";

// HISTORY
NSString const *TC_URL_MYPOST_HISTORY =
BASE_URL @"/thankscard/api/getMyPosHistory";
NSString const *TC_URL_MYREC_HISTORY =
BASE_URL @"/thankscard/api/getMyRecHistory";
NSString const *TC_URL_ALLPOST_HISTORY =
BASE_URL @"/thankscard/api/getAllPosHistory";
NSString const *TC_URL_ALLREC_HISTORY =
BASE_URL @"/thankscard/api/getAllRecHistory";
NSString const *TC_URL_HISTORY_DETAIL =
BASE_URL @"/thankscard/api/getHistoryDetail";
NSString const *TC_URL_HISTORY_LIST = BASE_URL @"/api/thanks/history";

// MY PAGE
NSString const *TC_URL_MY_PAGE = BASE_URL @"/api/thanks/mypage";

// POST CARD
NSString const *TC_URL_POST_CARD = BASE_URL @"/api/thanks/send";
//
NSString const *TC_URL_RANKING = BASE_URL @"/api/thanks/ranking";
NSString const *TC_URL_GET_ALL_RANK_STAGE = BASE_URL @"/api/thanks/ranks";

NSString const *TC_URL_ALL_TEMPLATE = BASE_URL @"/api/thanks/template";
NSString const *TC_URL_TEMPLATE_DETAIL =
BASE_URL @"/thankscard/api/getTemplate";
NSString const *TC_URL_VERSION_CHECK = BASE_URL @"/thankscard/api/versionCheck";
NSString const *TC_URL_SET_LIKE = BASE_URL @"/api/thanks/like";
NSString const *TC_URL_GET_ALL_CATEGORY =
BASE_URL @"/thankscard/api/getAllCategory";

NSString const *TC_URL_SET_AVATAR = BASE_URL @"/thankscard/api/setAvatar";

NSString const *TC_URL_SET_DEVICE_ID = BASE_URL @"/thankscard/api/setDeviceId";
NSString const *TC_URL_SET_FLAG_NOTICE =
BASE_URL @"/thankscard/api/setNoticeFlag";

// Shift Working
NSString const *SW_URL_PROJECT_LIST = BASE_URL  @"/api/sw/project/list";
NSString const *SW_URL_CHECKIN_LIST = BASE_URL @"/api/sw/checkin/list";
NSString const *SW_URL_PROJECT_CHECKIN = BASE_URL  @"/api/sw/checkin";
NSString const *SW_URL_PROJECT_CHECKIN_DELETE = BASE_URL  @"/api/sw/checkin/delete";
NSString const *SW_URL_WORK_SHIFT  = BASE_URL @"/api/sw/work/history";
NSString const *SW_URL_WORK_OFFER  = BASE_URL @"/api/sw/offer/list";
NSString const *SW_URL_WORK_OFFER_DETAIL  = BASE_URL @"/api/sw/offer/detail";
NSString const *SW_URL_WORK_OFFER_UPDATE  = BASE_URL @"/api/sw/offer/update";
NSString const *SW_URL_WORK_OFFER_DELETE  = BASE_URL @"/api/sw/offer/delete";
NSString const *SW_URL_WORK_OFFER_APPROVE  = BASE_URL @"/api/sw/offer/approve";
NSString const *SW_URL_WHO_WORKING_LIST = BASE_URL @"/api/sw/work/users";

NSString const *SW_URL_NOTICE_FORM  = BASE_URL @"/api/sw/notice/form";
NSString const *SW_URL_NOTICE_UPDATE= BASE_URL @"/api/sw/notice/update";
NSString const *SW_URL_NOTICE_LIST  = BASE_URL @"/api/sw/notice/list";
NSString const *SW_URL_NOTICE_CHECK  = BASE_URL @"/api/sw/notice/check";
NSString  const *SW_URL_CHECK = BASE_URL @"/api/sw/check";
NSString  const *SW_URL_RECEPTION = BASE_URL @"/api/sw/reception";
NSString  const *SW_URL_RECEPTION_INFO = BASE_URL @"/api/sw/reception/info";
NSString  const *SW_URL_TRANSIT_LIST = BASE_URL @"/api/sw/transit/list";
NSString  const *SW_URL_TRANSIT_DETAIL = BASE_URL @"/api/sw/transit/detail";
NSString  const *SW_URL_TRANSIT_DELETE = BASE_URL @"/api/sw/transit/delete";
NSString  const *SW_URL_TRANSIT_UPDATE= BASE_URL @"/api/sw/transit/update";

@end
