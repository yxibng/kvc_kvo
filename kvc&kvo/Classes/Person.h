//
//  Person.h
//  kvc&kvo
//
//  Created by 姚晓丙 on 2018/12/24.
//  Copyright © 2018 姚晓丙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, copy) NSString * name;
@property (nonatomic, assign) int age;
@property (nonatomic, copy) NSString *sex;
@end

NS_ASSUME_NONNULL_END
