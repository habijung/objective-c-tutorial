//
//  XYPoint.h
//  ch8
//
//  Created by 정하빈 on 11/12/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYPoint : NSObject

@property int x, y;

-(void) setX: (int) xVal andY: (int) yVal;

@end

NS_ASSUME_NONNULL_END
