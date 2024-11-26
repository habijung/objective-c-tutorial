//
//  TableViewController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import "TableViewController.h"
#import "TableViewModel.h"

@implementation TableViewController

- (id)init {
    self = [super init];

    NSLog(@"TableViewController init");
    
    TableViewModel *model = [[TableViewModel alloc] init];
    model.index = 123;
    model.title = @"Title 123";
    
    _tableData = [[NSMutableArray alloc] init];
    [_tableData addObject:model];

    return self;
}

#pragma mark - Actions

- (IBAction)addButtonClicked:(NSButton *)sender {
    NSLog(@"addButtonClicked");
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
            cell.textField.stringValue = @"Date";
        }
    }
    
    return cell;
}

@end
