//
//  Square.m
//  ch8
//
//  Created by 정하빈 on 11/11/24.
//

#import "Square.h"

@implementation Square: Rectangle

-(void) setSide: (int) s
{
    [self setWidth: s andHeight: s];
}

-(int) side
{
    return self.width;
}

@end
