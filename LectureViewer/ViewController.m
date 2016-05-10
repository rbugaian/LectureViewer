//
//  ViewController.m
//  LectureViewer
//
//  Created by Roman Bugaian on 09/05/16.
//  Copyright © 2016 Roman Bugaian. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "WindowController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onPDFSelected:) name:PDF_SELECTED_KEY object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onHeaderToolbarClicked:) name:ON_HEADER_TOOLBAR_CLICK object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onBodyToolbarClicked:) name:ON_BODY_TOOLBAR_CLICK object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTitleToolbarClicked:) name:ON_TITLE_TOOLBAR_CLICK object:nil];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void) onPDFSelected:(NSNotification *)notification {
    NSURL *selectedFileURL = [notification.userInfo objectForKey:@"URL"];
    
    PDFDocument *selectedPDF = [[PDFDocument alloc] initWithURL:selectedFileURL];
    [self.pdfView setDocument:selectedPDF];
}

- (void) onHeaderToolbarClicked:(NSNotification *) notification {
    [self setSelectionFontSize:18.0f];

}

- (void) onBodyToolbarClicked:(NSNotification *) notification {
    [self setSelectionFontSize:14.0f];
}

- (void) onTitleToolbarClicked:(NSNotification *) notification {
    [self setSelectionFontSize:24.0f];
}

- (void) setSelectionFontSize:(CGFloat) size {
    NSRange selection = self.contentTextView.selectedRange;
    NSString *existingFontName = self.contentTextView.font.fontName;
    
    NSFont *newFont = [NSFont fontWithName:existingFontName size:size];
    [self.contentTextView.textStorage addAttributes:@{NSFontAttributeName: newFont} range:selection];
}



@end
