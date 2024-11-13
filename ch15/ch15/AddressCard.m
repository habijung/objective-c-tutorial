//
//  AddressCard.m
//  ch15
//
//  Created by 정하빈 on 11/13/24.
//

#import "AddressCard.h"

@implementation AddressCard
{
    NSString *name;
    NSString *email;
}

-(void) setName:(NSString *)theName
{
    name = [NSString stringWithString:theName];
}

-(void) setEmail:(NSString *)theEmail
{
    email = [NSString stringWithString:theEmail];
}

-(NSString *)name
{
    return name;
}

-(NSString *)email
{
    return email;
}

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
