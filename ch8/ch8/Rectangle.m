//
//  Rectangle.m
//  ch8
//
//  Created by 정하빈 on 11/11/24.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(void) setWidth:(int)w andHeight:(int)h
{
    width = w;
    height = h;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

@end
