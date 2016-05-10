//
//  AppDelegate.m
//  LectureViewer
//
//  Created by Roman Bugaian on 09/05/16.
//  Copyright © 2016 Roman Bugaian. All rights reserved.
//

#import "AppDelegate.h"

NSString *const PDF_SELECTED_KEY = @"onPdfSelected";


@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)onOpenPDFClick:(id)sender {
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    [panel setCanChooseFiles:YES];
    [panel setCanChooseDirectories:NO];
    [panel setAllowsMultipleSelection:NO];
    [panel setAllowedFileTypes:@[@"pdf"]];
    
    NSInteger clicked = [panel runModal];
    
    if (clicked == NSFileHandlingPanelOKButton) {
        for (NSURL *url in [panel URLs]) {
            NSLog(@"URL: %@", url);
            
            [[NSNotificationCenter defaultCenter] postNotificationName:PDF_SELECTED_KEY object:self userInfo:@{@"URL":url}];
            // do something with the url here.
        }
    }
}

- (BOOL) applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)application
{
    return YES;
}
@end
