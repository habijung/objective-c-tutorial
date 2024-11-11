//
//  main.m
//  ch8
//
//  Created by 정하빈 on 11/11/24.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        
        [myRect setWidth: 5 andHeight: 8];
        
        NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
    }

    return 0;
}
