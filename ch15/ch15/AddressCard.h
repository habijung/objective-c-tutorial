//
//  AddressCard.h
//  ch15
//
//  Created by 정하빈 on 11/13/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddressCard : NSObject

- (void)setName:(NSString *)theName;
- (void)setEmail:(NSString *)theEmail;
- (NSString *)name;
- (NSString *)email;

- (void)print;

@end

NS_ASSUME_NONNULL_END
