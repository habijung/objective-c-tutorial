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
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    _dateString = [dateFormat stringFromDate:date];
    
    return self;
}

@end
