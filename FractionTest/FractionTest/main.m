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
        
        [myFraction setTo:100 over:200];
        [myFraction print];
        
        [myFraction setTo:1 over:3];
        [myFraction print];
    }
    return 0;
}
