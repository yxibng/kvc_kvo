//
//  Transaction.m
//  kvc&kvo
//
//  Created by 姚晓丙 on 2018/12/24.
//  Copyright © 2018 姚晓丙. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction


- (NSString *)description
{
    return [NSString stringWithFormat:@"payee: %@\namount:%@\ndate=%@",self.payee, self.amount, self.date];
}

@end
