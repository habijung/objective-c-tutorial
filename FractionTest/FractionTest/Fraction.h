//
//  Fraction.h
//  FractionTest
//
//  Created by 정하빈 on 11/11/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(double) convertToNum;

@end

NS_ASSUME_NONNULL_END
