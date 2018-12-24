//
//  Person.m
//  kvc&kvo
//
//  Created by 姚晓丙 on 2018/12/24.
//  Copyright © 2018 姚晓丙. All rights reserved.
//

#import "Person.h"

@interface Person()
@property (nonatomic, copy) NSString *career;

@end


@implementation Person
{
    NSString *hobby;
}


- (void)setNilValueForKey:(NSString *)key
{
    if ([key isEqualToString:@"age"]) {
        [self setValue:@0 forKey:@"age"];
        return;
    }
    
    if ([key isEqualToString:@"sex"]) {
        [self setValue:[NSNull null] forKey:@"sex"];
        return;
    }
    
    [super setNilValueForKey:key];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name is %@, age is %d, sex is %@, career is %@, hobby is  %@",self.name, self.age
            , self.sex, self.career, hobby];
}

@end
