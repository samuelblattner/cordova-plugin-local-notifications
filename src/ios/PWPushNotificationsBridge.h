//
//  PWPushNotificationsBridge.h
//  PluginProject
//
//  Created by Apple  on 17/07/2013.
//
//

#import <Foundation/Foundation.h>

@interface PWPushNotificationsBridge : NSObject
{
    NSString *IDPW_;
    NSString *userID_;
}

-(void) startPWPushNotificationsWithID:(NSString*)ID andUserID:(NSString*)userIDString;

+(PWPushNotificationsBridge*) sharedPhoneGapPWLayer;

@property(retain, nonatomic) NSString *IDPW;
@property(retain, nonatomic) NSString *userID;
@end
