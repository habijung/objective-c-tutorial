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

@interface MainWindowController : NSObject

- (IBAction)addButtonClicked:(NSButton *)sender;
- (IBAction)showButtonClicked:(NSButton *)sender;
- (IBAction)deleteButtonClicked:(NSButton *)sender;

@end

NS_ASSUME_NONNULL_END
