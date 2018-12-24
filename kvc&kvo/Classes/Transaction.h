//
//  Transaction.h
//  kvc&kvo
//
//  Created by 姚晓丙 on 2018/12/24.
//  Copyright © 2018 姚晓丙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Transaction : NSObject
@property (nonatomic) NSString* payee;   // To whom
@property (nonatomic) NSNumber* amount;  // How much
@property (nonatomic) NSDate* date;      // When
@end

NS_ASSUME_NONNULL_END
