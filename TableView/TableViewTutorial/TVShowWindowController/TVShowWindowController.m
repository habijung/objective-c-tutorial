//
//  TVShowWindowController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/20/24.
//

#import "TVShowWindowController.h"

@interface TVShowWindowController () {
    
    __weak IBOutlet NSButton *editButton;
    __weak IBOutlet NSButton *closeButton;
    __weak IBOutlet NSTextField *titleTextField;
    __weak IBOutlet NSTextField *contentTextField;
}

@property (copy) NSString *titleCopiedString;
@property (copy) NSString *contentCopiedString;

- (IBAction)editButtonClicked:(NSButton *)sender;
- (IBAction)closeButtonClicked:(NSButton *)sender;

@end

@implementation TVShowWindowController

- (id)init {
    self = [super init];;
    
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    if (_titleCopiedString) {
        titleTextField.stringValue = _titleCopiedString;
    }
    
    if (_contentCopiedString) {
        contentTextField.stringValue = _contentCopiedString;
    }
}

- (void)windowWillClose:(NSNotification *)notification {
    [self.delegate showWindowWillClose];
    
    _titleCopiedString = nil;
    _contentCopiedString = nil;
}

- (void)showSelectedRow:(NSString *)title content:(NSString *)content {
    _titleCopiedString = [title copy];
    _contentCopiedString = [content copy];
}

- (IBAction)editButtonClicked:(NSButton *)sender {
    // Sent title, content, date string to Main Window
    [self.delegate showWindowWillSendTitle:titleTextField.stringValue content:contentTextField.stringValue];
    [self close];
}

- (IBAction)closeButtonClicked:(NSButton *)sender {
    [self close];
}

@end
