//
//  TableObject.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import "TableObject.h"

@implementation TableObject

@synthesize ID, title;

- (id)init
{
    self = [super self];
    
    NSLog(@"TableObject init");
    
    return self;
}

@end
