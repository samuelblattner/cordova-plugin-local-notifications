//
//  PWPushNotificationsBridge.m
//  PluginProject
//
//  Created by Apple  on 17/07/2013.
//
//

#import "PWPushNotificationsBridge.h"

static PWPushNotificationsBridge * _pwPhoneGapPlugin_ = nil;
@implementation PWPushNotificationsBridge
@synthesize IDPW = IDPW_;
@synthesize userID = userID_;

+(PWPushNotificationsBridge*) sharedPhoneGapPWLayer
{
    if(!_pwPhoneGapPlugin_)
    {
        _pwPhoneGapPlugin_ = [[PWPushNotificationsBridge alloc] init];
    }
    return _pwPhoneGapPlugin_;
}

-(void) startPWPushNotificationsWithID:(NSString*)IDString andUserID:(NSString*)userIDString
{
    self.IDPW = IDString;
    self.userID = userIDString;
    [[UIApplication sharedApplication]
     registerForRemoteNotificationTypes:(UIRemoteNotificationType) (UIRemoteNotificationTypeAlert |
                                                                    UIRemoteNotificationTypeBadge |
                                                                    UIRemoteNotificationTypeSound)];  
}

@end
