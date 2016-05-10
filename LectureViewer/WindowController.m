//
//  WindowController.m
//  LectureViewer
//
//  Created by Roman Bugaian on 09/05/16.
//  Copyright © 2016 Roman Bugaian. All rights reserved.
//

#import "WindowController.h"

NSString *const ON_HEADER_TOOLBAR_CLICK = @"onHeaderToolbarClicked";
NSString *const ON_BODY_TOOLBAR_CLICK = @"onBodyToolbarClicked";
NSString *const ON_TITLE_TOOLBAR_CLICK = @"onTitleToolbarClicked";

@interface WindowController ()

@end

@implementation WindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction) onTitleToolbarClicked:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:ON_TITLE_TOOLBAR_CLICK object:self];
}

- (IBAction) onHeaderToolbarClicked:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:ON_HEADER_TOOLBAR_CLICK object:self];

}

- (IBAction) onBodyToolbarClicked:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:ON_BODY_TOOLBAR_CLICK object:self];

}


@end
