//
//  main.m
//  ch15
//
//  Created by 정하빈 on 11/13/24.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Name";
        NSString *aEmail = @"email@email.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        
        [card1 setName: aName];
        [card1 setEmail: aEmail];
        [card1 print];
    }
    
    return 0;
}
