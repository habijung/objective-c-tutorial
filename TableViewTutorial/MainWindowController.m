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

@property (nonatomic, strong) NSMutableArray *tableData;

- (IBAction)addButtonClicked:(NSButton *)sender;
- (IBAction)showButtonClicked:(NSButton *)sender;
- (IBAction)deleteButtonClicked:(NSButton *)sender;

@end

@implementation MainWindowController

- (id)init {
    self = [super init];
    NSLog(@"init: MainWindowController");
    
    TableViewModel *model = [[TableViewModel alloc] init];
    model.index = 1;
    model.title = @"Sample Title";
    model.content = @"Sample Content";
    
    _tableData = [[NSMutableArray alloc] init];
    [_tableData addObject:model];

    return self;
}

#pragma mark - Table View Control
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [_tableData count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSString *identifier = tableColumn.identifier;
    NSTableCellView *cell = [tableView makeViewWithIdentifier:identifier owner:self];
    
    if (_tableData) {
        TableViewModel *modelOfRow = [_tableData objectAtIndex:row];
        
        if ([identifier isEqualToString:@"No"]) {
            cell.textField.intValue = modelOfRow.index;
        } else if ([identifier isEqualToString:@"Title"]) {
            cell.textField.stringValue = modelOfRow.title;
        } else {
            cell.textField.stringValue = modelOfRow.dateString;
        }
    }
    
    return cell;
}

#pragma mark - Actions

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

- (void)addWindowWillSendTitle:(NSString *)title content:(NSString *)content {
    NSLog(@"log: MainWindowController: addWindowWillSendTitle:content:");
    
    if ([title isEqualToString:@""]) {
        title = @"(No Title)";
    }
    
    if ([content isEqualToString:@""]) {
        content = @"(No Content)";
    }
    
    NSLog(@"%@", title);
    NSLog(@"%@", content);
}

@end
