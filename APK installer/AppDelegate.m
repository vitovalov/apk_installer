//
//  AppDelegate.m
//  APK installer
//
//  Created by Vitaliy on 5/6/16.
//  Copyright © 2016 vitovalov. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    //[NSApp setActivationPolicy: NSApplicationActivationPolicyProhibited];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(BOOL)application:(NSApplication *)app openFile:(NSString *)filename
{
    NSLog(@"filename = %@", filename);
    
    [NSApp setActivationPolicy: NSApplicationActivationPolicyProhibited];
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/bin/sh"];
    [task setArguments:[NSArray arrayWithObjects:[[NSBundle mainBundle] pathForResource:@"shel" ofType:@"sh"], filename,[[NSBundle mainBundle] pathForResource:@"adb" ofType:@""], nil]];
    [task launch];
    
    [NSApp performSelector:@selector(terminate:) withObject:nil afterDelay:1.0];
    return YES;
}

@end
