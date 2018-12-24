//
//  MyClass.m
//  kvc&kvo
//
//  Created by 姚晓丙 on 2018/12/24.
//  Copyright © 2018 姚晓丙. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass


- (NSString *)description
{
    return [NSString stringWithFormat:@"x = %f, y = %f, z = %f",self.threeFloats.x, self.threeFloats.y, self.threeFloats.z];
}

@end
