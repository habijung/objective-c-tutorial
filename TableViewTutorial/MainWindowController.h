//
//  MainWindowController.h
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#import "TVAddWindowController.h"
#import "TVShowWindowController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainWindowController : NSObject <NSTableViewDataSource, NSTableViewDelegate>

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView;
- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row;

@end

NS_ASSUME_NONNULL_END
