//
//  WindowController.h
//  LectureViewer
//
//  Created by Roman Bugaian on 09/05/16.
//  Copyright © 2016 Roman Bugaian. All rights reserved.
//

#import <Cocoa/Cocoa.h>

extern NSString *const ON_HEADER_TOOLBAR_CLICK;
extern NSString *const ON_BODY_TOOLBAR_CLICK;
extern NSString *const ON_TITLE_TOOLBAR_CLICK;


@interface WindowController : NSWindowController

- (IBAction) onTitleToolbarClicked:(id)sender;
- (IBAction) onHeaderToolbarClicked:(id)sender;
- (IBAction) onBodyToolbarClicked:(id)sender;


@end
