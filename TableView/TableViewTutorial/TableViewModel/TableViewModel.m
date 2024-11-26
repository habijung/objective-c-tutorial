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
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    _dateString = @"2024-01-01 12:31";
    
    return self;
}

@end
