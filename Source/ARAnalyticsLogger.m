//
//  ARAnalyticsLogger.m
//
//  Created by Matthew Crenshaw on 2/12/15.
//  Copyright (c) 2015 Batoul Apps. All rights reserved.
//

#import "ARAnalyticsLogger.h"

OBJC_EXTERN void ARLog (NSString *format, ...) NS_FORMAT_FUNCTION(1,2);

@implementation ARAnalyticsLogger

- (void)logMessage:(DDLogMessage *)logMessage
{
	NSString *logMsg = logMessage->_message;
	
	if (_logFormatter)
	{
		logMsg = [_logFormatter formatLogMessage:logMessage];
	}
	
	if (logMsg)
	{
		ARLog(@"%@", logMsg);
	}
}


+ (ARAnalyticsLogger *) sharedInstance
{
	static dispatch_once_t pred = 0;
	static ARAnalyticsLogger *_sharedInstance = nil;
	
	dispatch_once(&pred, ^{
		_sharedInstance = [[self alloc] init];
	});
	
	return _sharedInstance;
}

@end
