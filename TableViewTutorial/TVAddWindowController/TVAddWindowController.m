//
//  TVAddWindowController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/20/24.
//

#import "TVAddWindowController.h"

@interface TVAddWindowController ()

@end

@implementation TVAddWindowController

- (id)init {
    self = [super init];
    NSLog(@"init: TVAddWindowController");
    
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)windowWillClose:(NSNotification *)notification {
    [self.delegate addWindowWillClose];
}

@end
