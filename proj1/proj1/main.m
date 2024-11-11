//
//  main.m
//  proj1
//
//  Created by 정하빈 on 11/11/24.
//

#import <Foundation/Foundation.h>


@interface Fraction : NSObject

- (void) print;
- (void) setNumerator: (int) n;
- (void) setDenominator: (int) d;

@end


@implementation Fraction
{
    int numerator;
    int denominator;
}

- (void)print
{
    NSLog (@"%i/%i", numerator, denominator);
}

- (void)setNumerator: (int) n
{
    numerator = n;
}

- (void)setDenominator: (int) d
{
    denominator = d;
}

@end


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Fraction *myFraction;
        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        NSLog(@"The value of myFraction is: ");
        [myFraction print];
    }

    return 0;
}
