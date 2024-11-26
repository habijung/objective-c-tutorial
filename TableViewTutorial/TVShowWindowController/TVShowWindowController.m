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

- (IBAction)editButtonClicked:(NSButton *)sender;
- (IBAction)closeButtonClicked:(NSButton *)sender;

@end

@implementation TVShowWindowController

- (id)init {
    self = [super init];;
    NSLog(@"init: TVShowWindowController");
    
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)windowWillClose:(NSNotification *)notification {
    [self.delegate showWindowWillClose];
}

- (IBAction)editButtonClicked:(NSButton *)sender {
    NSLog(@"log: TVShowWindowController: editButtonClicked:");
}

- (IBAction)closeButtonClicked:(NSButton *)sender {
    [self close];
}

@end
