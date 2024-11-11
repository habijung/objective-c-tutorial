//
//  main.m
//  ch8
//
//  Created by 정하빈 on 11/11/24.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"
#import "Square.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        
        [mySquare setSide: 5];
        
        NSLog(@"Square: %i", [mySquare side]);
        NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
    }

    return 0;
}
