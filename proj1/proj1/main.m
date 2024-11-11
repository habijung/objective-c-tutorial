//
//  main.m
//  proj1
//
//  Created by 정하빈 on 11/11/24.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int n, number, triangularNumber;
        
        NSLog(@"What triangular number do you want?");
        scanf("%i", &number);
        
        triangularNumber = 0;;
        
        for (n = 1; n <= number; ++n)
        {
            triangularNumber += n;
        }
        
        NSLog(@"Triangular number %i is %i\n", number, triangularNumber);
    }

    return 0;
}
