//
//  MainWindowController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import "MainWindowController.h"
#import "TableViewModel.h"

@implementation MainWindowController

- (id)init {
    self = [super init];

    NSLog(@"init: TableViewController");
    
    TableViewModel *model = [[TableViewModel alloc] init];
    model.index = 1;
    model.title = @"Title 1";
    
    _tableData = [[NSMutableArray alloc] init];
    [_tableData addObject:model];

    return self;
}

#pragma mark - Actions

- (IBAction)addButtonClicked:(NSButton *)sender {
    NSLog(@"log: Add Button Clicked");
    
    if (!tvAddWindowController) {
        tvAddWindowController = [[TVAddWindowController alloc] initWithWindowNibName:[TVAddWindowController className]];
        
        [tvAddWindowController showWindow:nil];
    }
}

- (IBAction)showButtonClicked:(NSButton *)sender {
    NSLog(@"showButtonClicked");
}

- (IBAction)deleteButtonClicked:(NSButton *)sender {
    NSLog(@"deleteButtonClicked");
}

#pragma mark - Protocols

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

@end
