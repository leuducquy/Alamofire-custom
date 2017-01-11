//
//  WFViewController.h
//  welfare-core-ios
//
//  Created by VietND on 7/7/16.
//  Copyright © 2016 trentevietnam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WFViewController : UIViewController
#ifdef TARGET_OS_SIMULATOR
#define isSimulator() YES
#else
#define isSimulator() NO
#endif

@end
