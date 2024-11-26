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

@property (nonatomic, strong) NSMutableArray *modelArray;

- (IBAction)addButtonClicked:(NSButton *)sender;
- (IBAction)showButtonClicked:(NSButton *)sender;
- (IBAction)deleteButtonClicked:(NSButton *)sender;

@end

@implementation MainWindowController

- (id)init {
    self = [super init];
    
    TableViewModel *model = [[TableViewModel alloc] init];
    model.index = 1;
    model.title = @"Sample Title";
    model.content = @"Sample Content";
    
    _modelArray = [[NSMutableArray alloc] init];
    [_modelArray addObject:model];

    return self;
}

#pragma mark - Table View Control
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [_modelArray count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSString *identifier = tableColumn.identifier;
    NSTableCellView *cell = [tableView makeViewWithIdentifier:identifier owner:self];
    
    if (_modelArray) {
        TableViewModel *modelOfRow = [_modelArray objectAtIndex:row];
        
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
    if (!tvAddWindowController) {
        tvAddWindowController = [[TVAddWindowController alloc] initWithWindowNibName:[TVAddWindowController className]];
        tvAddWindowController.delegate = self;
        [tvAddWindowController showWindow:nil];
    }
}

- (IBAction)showButtonClicked:(NSButton *)sender {
    if (tableView.selectedRow != -1) {
        if (!tvShowWindowController) {
            tvShowWindowController = [[TVShowWindowController alloc] initWithWindowNibName:[TVShowWindowController className]];
            tvShowWindowController.delegate = self;
            
            int tableViewIndex = (int)tableView.selectedRow;
            TableViewModel *model = [_modelArray objectAtIndex:tableViewIndex];
            
            [tvShowWindowController showSelectedRow:model.title content:model.content];
            [tvShowWindowController showWindow:nil];
        }
    }
}

- (IBAction)deleteButtonClicked:(NSButton *)sender {
    if (tableView.selectedRow != -1) {
        int tableViewIndex = (int)tableView.selectedRow;
        
        [_modelArray removeObjectAtIndex:tableViewIndex];
        
        for (NSInteger i = tableViewIndex; i < _modelArray.count; i++) {
            TableViewModel *model = [_modelArray objectAtIndex:i];
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
    if ([title isEqualToString:@""]) {
        title = @"(No Title)";
    }
    
    if ([content isEqualToString:@""]) {
        content = @"(No Content)";
    }
    
    TableViewModel *model = [[TableViewModel alloc] init];
    model.index = (int)[_modelArray count] + 1;
    model.title = title;
    model.content = content;
    
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    model.dateString = [dateFormatter stringFromDate:date];
    
    [_modelArray addObject:model];
    [tableView reloadData];
}

#pragma mark - TVShowWindowControllerDelegate

- (void)showWindowWillClose {
    tvShowWindowController = nil;
}

- (void)showWindowWillSendTitle:(NSString *)title content:(NSString *)content {
    if ([title isEqualToString:@""]) {
        title = @"(No Title)";
    }
    
    if ([content isEqualToString:@""]) {
        content = @"(No Content)";
    }
    
    TableViewModel *model = [_modelArray objectAtIndex:tableView.selectedRow];
    model.title = title;
    model.content = content;
    
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    model.dateString = [dateFormatter stringFromDate:date];
    
    [tableView reloadData];
}

@end
