//
//  TVShowWindowController.h
//  TableViewTutorial
//
//  Created by 정하빈 on 11/20/24.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TVShowWindowControllerDelegate <NSObject>

- (void)showWindowWillClose;

@end

@interface TVShowWindowController : NSWindowController <NSWindowDelegate>

@property (nonatomic, weak) id<TVShowWindowControllerDelegate> delegate;

- (void)showSelectedRow:(NSString *)title content:(NSString *)content;

@end

NS_ASSUME_NONNULL_END
