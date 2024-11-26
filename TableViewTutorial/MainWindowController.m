//
//  MainWindowController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import "MainWindowController.h"
#import "TableViewModel.h"

@interface MainWindowController () {
    TVAddWindowController *tvAddWindowController;
    TVShowWindowController *tvShowWindowController;
    
    __weak IBOutlet NSButton *addButton;
    __weak IBOutlet NSButton *showButton;
    __weak IBOutlet NSButton *deleteButton;
}

@end

@implementation MainWindowController

- (id)init {
    self = [super init];
    NSLog(@"init: MainWindowController");

    return self;
}

- (IBAction)addButtonClicked:(NSButton *)sender {
    NSLog(@"log: Add Button Clicked");
    
    if (!tvAddWindowController) {
        tvAddWindowController = [[TVAddWindowController alloc] initWithWindowNibName:[TVAddWindowController className]];
        
        [tvAddWindowController showWindow:nil];
    }
}

- (IBAction)showButtonClicked:(NSButton *)sender {
    NSLog(@"log: Show Button Clicked");
    
    if (!tvShowWindowController) {
        tvShowWindowController = [[TVShowWindowController alloc] initWithWindowNibName:[TVShowWindowController className]];
        
        [tvShowWindowController showWindow:nil];
    }
}

- (IBAction)deleteButtonClicked:(NSButton *)sender {
    NSLog(@"deleteButtonClicked");
}

@end
