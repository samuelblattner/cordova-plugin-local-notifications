//
//  Hello.h
//  PluginProject
//
//  Created by Muneeb Ali on 16/07/2013.
//
//

#import <Foundation/Foundation.h>

#import <Cordova/CDV.h>

@interface PWPhoneGapPlugin : CDVPlugin

- (void)SetupPushNotifications:(CDVInvokedUrlCommand*)command;

@end
