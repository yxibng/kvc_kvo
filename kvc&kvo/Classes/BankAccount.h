//
//  BankAccount.h
//  kvc&kvo
//
//  Created by 姚晓丙 on 2018/12/24.
//  Copyright © 2018 姚晓丙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Transaction.h"

NS_ASSUME_NONNULL_BEGIN

@interface BankAccount : NSObject

@property (nonatomic) NSNumber* currentBalance;              // An attribute
@property (nonatomic) Person* owner;                         // A to-one relation
@property (nonatomic) NSArray< Transaction* >* transactions; // A to-many relation

@end

NS_ASSUME_NONNULL_END
