//
//  ViewController.h
//  LectureViewer
//
//  Created by Roman Bugaian on 09/05/16.
//  Copyright © 2016 Roman Bugaian. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Quartz/Quartz.h>


@interface ViewController : NSViewController

@property (weak) IBOutlet PDFView *pdfView;

@property (unsafe_unretained) IBOutlet NSTextView *contentTextView;

@end

