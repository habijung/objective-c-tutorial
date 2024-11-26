//
//  MainWindowController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import "MainWindowController.h"
#import "TableViewModel.h"

@interface MainWindowController () <TVAddWindowControllerDelegate> {
    TVAddWindowController *tvAddWindowController;
    TVShowWindowController *tvShowWindowController;
    
    __weak IBOutlet NSButton *addButton;
    __weak IBOutlet NSButton *showButton;
    __weak IBOutlet NSButton *deleteButton;
}

- (IBAction)addButtonClicked:(NSButton *)sender;
- (IBAction)showButtonClicked:(NSButton *)sender;
- (IBAction)deleteButtonClicked:(NSButton *)sender;

@end

@implementation MainWindowController

- (id)init {
    self = [super init];
    NSLog(@"init: MainWindowController");

    return self;
}

- (IBAction)addButtonClicked:(NSButton *)sender {
    NSLog(@"log: MainWindowController: Add Button Clicked");
    
    if (!tvAddWindowController) {
        tvAddWindowController = [[TVAddWindowController alloc] initWithWindowNibName:[TVAddWindowController className]];
        tvAddWindowController.delegate = self;
        [tvAddWindowController showWindow:nil];
    }
}

- (IBAction)showButtonClicked:(NSButton *)sender {
    NSLog(@"log: MainWindowController: Show Button Clicked");
    
    if (!tvShowWindowController) {
        tvShowWindowController = [[TVShowWindowController alloc] initWithWindowNibName:[TVShowWindowController className]];
        
        [tvShowWindowController showWindow:nil];
    }
}

- (IBAction)deleteButtonClicked:(NSButton *)sender {
    NSLog(@"log: MainWindowController: Delete Button Clicked");
}

#pragma mark - TVAddWindowControllerDelegate

- (void)addWindowWillClose {
    tvAddWindowController = nil;
}

- (void)addWindowWillReturnTitle:(NSString *)title content:(NSString *)content {
    NSLog(@"log: MainWindowController: contentWillAdd");
    NSLog(@"%@", title);
    NSLog(@"%@", content);
}

@end
