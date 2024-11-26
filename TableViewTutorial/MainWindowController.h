//
//  MainWindowController.h
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#import "TVAddWindowController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainWindowController : NSObject <NSTableViewDataSource, NSTableViewDelegate> {
    TVAddWindowController *tvAddWindowController;
    
    __weak IBOutlet NSButton *addButton;
    __weak IBOutlet NSButton *showButton;
    __weak IBOutlet NSButton *deleteButton;
}

@property(nonatomic, strong) NSMutableArray *tableData;

#pragma mark - Actions
- (IBAction)addButtonClicked:(NSButton *)sender;
- (IBAction)showButtonClicked:(NSButton *)sender;
- (IBAction)deleteButtonClicked:(NSButton *)sender;

#pragma mark - Protocols

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView;
- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row;

@end

NS_ASSUME_NONNULL_END
