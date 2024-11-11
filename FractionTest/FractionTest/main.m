//
//  main.m
//  FractionTest
//
//  Created by 정하빈 on 11/11/24.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        
        [myFraction setNumerator: 1];
        myFraction.denominator = 3;
        
        NSLog(@"The value of myFraction is: ");
        [myFraction print];
    }
    return 0;
}
