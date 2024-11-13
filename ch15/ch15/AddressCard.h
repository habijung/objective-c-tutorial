//
//  AddressCard.h
//  ch15
//
//  Created by 정하빈 on 11/13/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddressCard : NSObject

// copy     : setter에서 인스턴스 변수의 사본 만들기
// nonatomic: 다중 스레드에서 동시에 한 인스턴스에 접근할 때 발생할 수 있는
//            경쟁 조건에 대해서 고려할 필요 없음
@property (copy, nonatomic) NSString *name, *email;

- (void)print;

@end

NS_ASSUME_NONNULL_END
