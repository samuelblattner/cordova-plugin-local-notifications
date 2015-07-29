//
//  Hello.m
//  PluginProject
//
//  Created by Muneeb Ali on 16/07/2013.
//
//

#import "PWPhoneGapPlugin.h"
#import "PWPushNotificationsBridge.h"

@implementation PWPhoneGapPlugin

- (void)SetupPushNotifications:(CDVInvokedUrlCommand*)command
{
    NSLog(@"echooo callledddddddd");
    
    CDVPluginResult* pluginResult = nil;
    NSString* pushWizardID = [command.arguments objectAtIndex:0];
    NSLog( @"%@",pushWizardID);
    [[PWPushNotificationsBridge sharedPhoneGapPWLayer] startPWPushNotificationsWithID:pushWizardID];
    
    if (pushWizardID != nil && [pushWizardID length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:pushWizardID];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
