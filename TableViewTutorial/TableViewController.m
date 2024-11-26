//
//  TableViewController.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import "TableViewController.h"
#import "TableObject.h"

@implementation TableViewController

@synthesize tableObjects;

- (id)init
{
    self = [super init];

    NSLog(@"TableViewController init");
    
    // Create table objects array
    tableObjects = [[NSMutableArray alloc] init];

    // Create initial table object
    TableObject *object = [[TableObject alloc] init];
    object.ID = 123;
    object.title = @"Object 123";

    // Add object to array
    [tableObjects addObject:object];
    NSLog(@"%lu", (unsigned long)[tableObjects count]);

    return self;
}

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

@end
