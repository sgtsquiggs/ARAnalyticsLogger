//
//  ARAnalyticsLogger.h
//
//  Created by Matthew Crenshaw on 2/12/15.
//  Copyright (c) 2015 Batoul Apps. All rights reserved.
//

#import <CocoaLumberjack/CocoaLumberjack.h>

@interface ARAnalyticsLogger : DDAbstractLogger

+ (ARAnalyticsLogger *)sharedInstance;

@end
