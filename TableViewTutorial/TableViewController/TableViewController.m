//
//  TableViewController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/20/24.
//

#import "TableViewController.h"
#import "TableViewModel.h"

@interface TableViewController ()

@property (nonatomic, strong) NSMutableArray *tableData;

@end

@implementation TableViewController

- (id)init {
    self = [super init];
    NSLog(@"init: TableViewController");
    
    TableViewModel *model = [[TableViewModel alloc] init];
    model.index = 1;
    model.title = @"Sample title";
    model.content = @"Sample content";
    
    _tableData = [[NSMutableArray alloc] init];
    [_tableData addObject:model];
    
    return self;
}

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
