//
//  AddressCard.m
//  ch15
//
//  Created by 정하빈 on 11/13/24.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(void)print
{
    NSLog(@"===========================");
    NSLog(@"|                         |");
    NSLog(@"| %-23s |", [name UTF8String]);
    NSLog(@"| %-23s |", [email UTF8String]);
    NSLog(@"|                         |");
    NSLog(@"|      0           0      |");
    NSLog(@"===========================");
}

@end
