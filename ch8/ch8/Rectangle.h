//
//  Rectangle.h
//  ch8
//
//  Created by 정하빈 on 11/11/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject

@property int width, height;

-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w andHeight: (int) h;

@end

NS_ASSUME_NONNULL_END
