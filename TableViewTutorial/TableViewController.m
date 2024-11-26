//
//  TableViewController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import "TableViewController.h"
#import "TableObject.h"

@implementation TableViewController

- (id)init
{
    self = [super init];

    NSLog(@"TableViewController init");
    
    /*
    // Create table objects array
    _tableObjects = [[NSMutableArray alloc] init];

    // Create initial table object
    TableObject *object = [[TableObject alloc] init];
    object.ID = 123;
    object.title = @"Object 123";

    // Add object to array
    [_tableObjects addObject:object];
     */
    
    // Test for Table View Cell
    _tableNo = [[NSMutableArray alloc] init];
    _tableTitle = [[NSMutableArray alloc] init];
    _tableDate = [[NSMutableArray alloc] init];
    
    [_tableNo addObject:@"1"];
    [_tableTitle addObject:@"Title 1"];
    [_tableDate addObject:@"2024/11/19"];

    return self;
}

#pragma mark -

- (IBAction)addButtonClicked:(NSButton *)sender
{
    NSLog(@"addButtonClicked");
}

- (IBAction)showButtonClicked:(NSButton *)sender
{
    NSLog(@"showButtonClicked");
}

- (IBAction)deleteButtonClicked:(NSButton *)sender
{
    NSLog(@"deleteButtonClicked");
}

#pragma mark -

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [_tableNo count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString *identifier = tableColumn.identifier;
    NSTableCellView *cell = [tableView makeViewWithIdentifier:identifier owner:self];
    
    if ([identifier isEqualToString:@"No"])
    {
        cell.textField.stringValue = [_tableNo objectAtIndex:row];
    } else if ([identifier isEqualToString:@"Title"])
    {
        cell.textField.stringValue = [_tableTitle objectAtIndex:row];
    } else
    {
        cell.textField.stringValue = [_tableDate objectAtIndex:row];
    }
    
    return cell;
}

@end
