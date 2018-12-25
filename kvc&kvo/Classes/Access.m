//
//  Access.m
//  kvc&kvo
//
//  Created by 姚晓丙 on 2018/12/24.
//  Copyright © 2018 姚晓丙. All rights reserved.
//

#import "Access.h"

@interface Access()

@property (nonatomic, copy) NSString *inside;
@end

@implementation Access
{
    NSString *text;
}

//+ (BOOL)accessInstanceVariablesDirectly
//{
//    return NO;
//}


- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}

@end
