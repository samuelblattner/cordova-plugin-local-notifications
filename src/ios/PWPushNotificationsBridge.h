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
}

-(void) startPWPushNotificationsWithID:(NSString*)ID;

+(PWPushNotificationsBridge*) sharedPhoneGapPWLayer;

@property(retain, nonatomic) NSString *IDPW;
@end
