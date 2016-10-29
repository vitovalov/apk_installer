//
//  ViewController.m
//  APK installer
//
//  Created by Vitaliy on 5/6/16.
//  Copyright © 2016 vitovalov. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController



- (NSString *)runCommand:(NSString *)commandToRun
{
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/bin/sh"];
    
    NSArray *arguments = [NSArray arrayWithObjects:
                          @"" ,
                          [NSString stringWithFormat:@"%@", commandToRun],
                          nil];
    NSLog(@"run command:%@", commandToRun);
    [task setArguments:arguments];
    
    NSPipe *pipe = [NSPipe pipe];
    [task setStandardOutput:pipe];
    
    NSFileHandle *file = [pipe fileHandleForReading];
    
    [task launch];
    
    NSData *data = [file readDataToEndOfFile];
    
    NSString *output = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return output;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/bin/sh"];
    [task setArguments:[NSArray arrayWithObjects:[[NSBundle mainBundle] pathForResource:@"shel" ofType:@"sh"], nil]];
    [task launch];
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

@end
