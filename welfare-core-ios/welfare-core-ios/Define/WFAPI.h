//
//  WFAPI.h
//  welfare-core-ios
//
//  Created by AnhNC on 7/6/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <Foundation/Foundation.h>

//#define BASE_URL @"https://tr-fukuri.jp"
#define BASE_URL @"http://192.168.1.124:9000"

@interface WFAPI : NSObject
// ACCOUNT
extern NSString const *WF_URL_SIGN_IN;
extern NSString const *WF_URL_SIGN_OUT;
extern NSString const *WF_URL_LIST_COMPANY;
extern NSString const *WF_URL_ACCOUNT_CHANGE_PASS;
extern NSString const *WF_URL_ACCOUNT_CHANGE_PUSH;
extern NSString const *WF_URL_RP_UPDATE_INFO;
extern NSString const *WF_URL_ACCOUNT_INFO;
extern NSString const *WF_URL_ACCOUNT_INFO_MEMBER;
extern NSString const *WF_URL_DEVICE_CLEAR;
extern NSString const *WF_URL_DEVICE_UPDATE;
extern NSString const *WF_URL_ACCOUNT_INFOR_REQUEST;
extern NSString const *WF_URL_ACCOUNT_INFOR_REQUEST_FORM;
// Report
extern NSString const *WF_URL_RP_REPORT_LIST;
extern NSString const *WF_URL_RP_OTHER_REPORT_LIST;
extern NSString const *WF_URL_RP_REPORT_UPDATE;
extern NSString const *WF_URL_RP_REPORT_DETAIL;
extern NSString const *WF_URL_RP_REPORT_LIKE;
extern NSString const *WF_URL_RP_REPORT_COMMENT;
extern NSString const *WF_URL_RP_ACTIVITY;
extern NSString const *WF_URL_DR_REPORT_GRAPH;

// Message
extern NSString const *WF_URL_MS_MESSAGE_LIST;
extern NSString const *WF_URL_MS_MESSAGE_BOARD;
extern NSString const *WF_URL_MS_MESSAGE_UPDATE;
extern NSString const *WF_URL_MS_MESSAGE_DETAIL;
extern NSString const *WFM_URL_MS_MESSAGE_COMMENT;
extern NSString const *WFM_URL_MS_MESSAGE_LIKE;
extern NSString const *WFM_URL_MS_MESSAGE_LASTEST;
extern NSString const *WFM_URL_MS_MESSAGE_COMMENT_LASTEST;
extern NSString const *WFM_URL_MS_MESSAGE_NOTE_DETAIL;
extern NSString const *WFM_URL_MS_NOTE_COPY;
extern NSString const *WFM_URL_MS_MESSAGE_NOTE_UPDATE;
extern NSString const *WFM_URL_MS_MESSAGE_DELETE;
extern NSString const *WFM_URL_MS_CONTACT_LIST;
extern NSString const *WFM_URL_MS_CONTACT_ADD;

// SERVICE OF TERMS
extern NSString const *WF_URL_SERVICE_OF_TERMS;
extern NSString const *WF_URL_PRIVACY_POLICY;
extern NSString const *WF_URL_FORGET_PASS;

// Thank Card
// ACCOUNT
extern NSString const *TC_URL_SIGN_IN;
extern NSString const *TC_URL_CHANGE_PASS;
extern NSString const *TC_URL_LOGIN_INFO;

// MY PAGE
extern NSString const *TC_URL_MY_PAGE;
// HISTORY
extern NSString const *TC_URL_MYPOST_HISTORY;
extern NSString const *TC_URL_MYREC_HISTORY;
extern NSString const *TC_URL_ALLPOST_HISTORY;
extern NSString const *TC_URL_ALLREC_HISTORY;
extern NSString const *TC_URL_HISTORY_DETAIL;
extern NSString const *TC_URL_HISTORY_LIST;

// POST CARD
extern NSString const *TC_URL_POST_CARD;
extern NSString const *TC_URL_ALL_TEMPLATE;
extern NSString const *TC_URL_TEMPLATE_DETAIL;

// RANKING
extern NSString const *TC_URL_RANKING;
extern NSString const *TC_URL_DEPARTMENT_NAME;
extern NSString const *TC_URL_USER_NAME;

// VERSION
extern NSString const *TC_URL_VERSION_CHECK;
extern NSString const *TC_URL_SET_LIKE;
extern NSString const *TC_URL_GET_ALL_CATEGORY;
extern NSString const *TC_URL_GET_ALL_RANK_STAGE;
extern NSString const *TC_URL_SET_AVATAR;
extern NSString const *TC_URL_SET_DEVICE_ID;
extern NSString const *TC_URL_SET_FLAG_NOTICE;

// Shift Working
extern NSString const *SW_URL_PROJECT_LIST;
extern NSString const *SW_URL_PROJECT_CHECKIN;
extern NSString const *SW_URL_PROJECT_CHECKIN_DELETE;
extern NSString const *SW_URL_WHO_WORKING_LIST;
extern NSString const *SW_URL_CHECKIN_LIST;
extern NSString const *SW_URL_WORK_SHIFT;
extern NSString const *SW_URL_WORK_OFFER;
extern NSString const *SW_URL_WORK_OFFER_DETAIL;
extern NSString const *SW_URL_WORK_OFFER_UPDATE;
extern NSString const *SW_URL_WORK_OFFER_DELETE;
extern NSString const *SW_URL_WORK_OFFER_APPROVE;

extern NSString const *SW_URL_NOTICE_FORM;
extern NSString const *SW_URL_NOTICE_UPDATE;
extern NSString const *SW_URL_NOTICE_LIST;
extern NSString const *SW_URL_NOTICE_CHECK;
extern NSString const *SW_URL_CHECK;
extern NSString const *SW_URL_RECEPTION;
extern NSString const *SW_URL_RECEPTION_INFO;
extern NSString const *SW_URL_TRANSIT_LIST;
extern NSString const *SW_URL_TRANSIT_DETAIL;
extern NSString const *SW_URL_TRANSIT_DELETE;
extern NSString const *SW_URL_TRANSIT_UPDATE;

@end
