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
        int p, d;
        BOOL isPrime;
        
        for (p = 2; p <= 50; ++p)
        {
            isPrime = YES;
            
            for (d = 2; d < p; ++d)
            {
                if (p % d == 0)
                {
                    isPrime = NO;
                }
            }
            
            if (isPrime == YES)
            {
                NSLog(@"%i ", p);
            }
        }
    }

    return 0;
}
