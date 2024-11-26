//
//  TableViewModel.h
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewModel : NSObject

@property int index;
@property NSString *title;
@property NSString *dateString;
@property NSString *content;

@end

NS_ASSUME_NONNULL_END
