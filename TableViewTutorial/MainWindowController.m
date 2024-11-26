//
//  MainWindowController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import "MainWindowController.h"
#import "TableViewModel.h"

@interface MainWindowController () <TVAddWindowControllerDelegate, TVShowWindowControllerDelegate> {
    TVAddWindowController *tvAddWindowController;
    TVShowWindowController *tvShowWindowController;
    
    __weak IBOutlet NSButton *addButton;
    __weak IBOutlet NSButton *showButton;
    __weak IBOutlet NSButton *deleteButton;
    __weak IBOutlet NSTableView *tableView;
}

@property (nonatomic, strong) NSMutableArray *tableViewData;

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
    
    _tableViewData = [[NSMutableArray alloc] init];
    [_tableViewData addObject:model];

    return self;
}

#pragma mark - Table View Control
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [_tableViewData count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSString *identifier = tableColumn.identifier;
    NSTableCellView *cell = [tableView makeViewWithIdentifier:identifier owner:self];
    
    if (_tableViewData) {
        TableViewModel *modelOfRow = [_tableViewData objectAtIndex:row];
        
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
    
    if (tableView.selectedRow != -1) {
        if (!tvShowWindowController) {
            tvShowWindowController = [[TVShowWindowController alloc] initWithWindowNibName:[TVShowWindowController className]];
            tvShowWindowController.delegate = self;
            [tvShowWindowController showWindow:nil];
        }
    }
}

- (IBAction)deleteButtonClicked:(NSButton *)sender {
    NSLog(@"log: MainWindowController: Delete Button Clicked");
    
    if (tableView.selectedRow != -1) {
        int tableViewIndex = (int)tableView.selectedRow;
        
        [_tableViewData removeObjectAtIndex:tableViewIndex];
        
        for (NSInteger i = tableViewIndex; i < _tableViewData.count; i++) {
            TableViewModel *model = [_tableViewData objectAtIndex:i];
            model.index = (int)i + 1;
        }
        
        [tableView reloadData];
    }
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
    
    TableViewModel *model = [[TableViewModel alloc] init];
    model.index = (int)[_tableViewData count] + 1;
    model.title = title;
    model.content = content;
    
    // TODO: Create date string method
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    model.dateString = [dateFormatter stringFromDate:date];
    
    // TODO: Create print model method
    NSLog(@"New model index: %i", model.index);
    NSLog(@"New model title: %@", model.title);
    NSLog(@"New model content: %@", model.content);
    NSLog(@"New model date: %@", model.dateString);
    
    [_tableViewData addObject:model];
    [tableView reloadData];
}

#pragma mark - TVShowWindowControllerDelegate

- (void)showWindowWillClose {
    tvShowWindowController = nil;
}

@end
