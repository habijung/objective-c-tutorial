//
//  TVAddWindowController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/20/24.
//

#import "TVAddWindowController.h"

@interface TVAddWindowController () {
    __weak IBOutlet NSButton *completeButton;
    __weak IBOutlet NSTextField *titleTextField;
    __weak IBOutlet NSTextField *contentTextField;
}

- (IBAction)completeButtonClicked:(NSButton *)sender;

@end

@implementation TVAddWindowController

- (id)init {
    self = [super init];
    
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
}

- (void)windowWillClose:(NSNotification *)notification {
    [self.delegate addWindowWillClose];
}

- (IBAction)completeButtonClicked:(NSButton *)sender {
    // Send title and content to Main Window
    [self.delegate addWindowWillSendTitle:titleTextField.stringValue content:contentTextField.stringValue];
    [self close];
}

@end
