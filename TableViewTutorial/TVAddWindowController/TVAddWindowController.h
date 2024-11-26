//
//  TVAddWindowController.h
//  TableViewTutorial
//
//  Created by 정하빈 on 11/20/24.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TVAddWindowControllerDelegate <NSObject>

- (void)addWindowWillClose;

@end

@interface TVAddWindowController : NSWindowController <NSWindowDelegate>

@property (nonatomic, weak) id<TVAddWindowControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
