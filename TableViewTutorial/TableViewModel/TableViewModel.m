//
//  TableViewModel.m
//  TableViewTutorial
//
//  Created by 정하빈 on 11/18/24.
//

#import "TableViewModel.h"

@implementation TableViewModel

- (id)init {
    self = [super self];
    
    NSLog(@"init: TableObject");
    
    // Get current date and time.
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    _dateString = [dateFormatter stringFromDate:date];
    
    return self;
}

@end
