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
        NSString *aName = @"aName";
        NSString *aEmail = @"aEmail@email.com";
        
        NSString *bName = @"bName";
        NSString *bEmail = @"bEmail@email.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        
        [card1 print];
        [card2 print];
    }
    
    return 0;
}
