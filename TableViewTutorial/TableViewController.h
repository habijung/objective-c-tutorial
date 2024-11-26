//
//  TableViewController.h
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : NSObject
{
    __weak IBOutlet NSButton *addButton;
    __weak IBOutlet NSButton *showButton;
    __weak IBOutlet NSButton *deleteButton;
}

- (IBAction)addButtonClicked:(NSButton *)sender;
- (IBAction)showButtonClicked:(NSButton *)sender;
- (IBAction)deleteButtonClicked:(NSButton *)sender;

@end

NS_ASSUME_NONNULL_END
