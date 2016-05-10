//
//  AppDelegate.h
//  LectureViewer
//
//  Created by Roman Bugaian on 09/05/16.
//  Copyright © 2016 Roman Bugaian. All rights reserved.
//

#import <Cocoa/Cocoa.h>

extern NSString *const PDF_SELECTED_KEY;

@interface AppDelegate : NSObject <NSApplicationDelegate>

- (IBAction)onOpenPDFClick:(id)sender;

@end

