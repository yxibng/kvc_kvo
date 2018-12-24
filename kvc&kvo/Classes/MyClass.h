//
//  MyClass.h
//  kvc&kvo
//
//  Created by 姚晓丙 on 2018/12/24.
//  Copyright © 2018 姚晓丙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef struct {
    float x, y, z;
} ThreeFloats;
@interface MyClass : NSObject

@property (nonatomic) ThreeFloats threeFloats;

@end

NS_ASSUME_NONNULL_END
