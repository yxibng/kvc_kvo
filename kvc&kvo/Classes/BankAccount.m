//
//  BankAccount.m
//  kvc&kvo
//
//  Created by 姚晓丙 on 2018/12/24.
//  Copyright © 2018 姚晓丙. All rights reserved.
//

#import "BankAccount.h"

@implementation BankAccount


- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"undefined_Key"]) {
        return;
    }
    
    [super setValue:value forKey:key];
}


@end
