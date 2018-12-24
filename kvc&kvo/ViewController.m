//
//  ViewController.m
//  kvc&kvo
//
//  Created by 姚晓丙 on 2018/12/24.
//  Copyright © 2018 姚晓丙. All rights reserved.
//

#import "ViewController.h"

#import "BankAccount.h"
#import "MyClass.h"


@interface ViewController ()
@property (nonatomic, strong) BankAccount *myAccount;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BankAccount *myAccount = [[BankAccount alloc] init];
    Person *me = [[Person alloc] init];
    me.name = @"yxibng";
    //测试setNilValueForKey:
    [me setNilValueForKey:@"age"];
    [me setNilValueForKey:@"sex"];
    //私有属性
    [me setValue:@"student" forKey:@"career"];
    //私有变量
    [me setValue:@"ios" forKey:@"hobby"];
    
    NSLog(@"my info %@", me);
    
    
    
    
    myAccount.transactions = [self transactions];
    myAccount = myAccount;
    
    
    //测试setValue:forUndefinedKey:
    [myAccount setValue:@"undefined" forKey:@"undefined_Key"];
    
    
    //avg
    NSNumber *amountAvg = [[self transactions] valueForKeyPath:@"@avg.amount"];
    NSLog(@"amountAvg= %@",amountAvg);
    
    //count
    NSNumber *count = [[self transactions] valueForKeyPath:@"@count"];
    NSLog(@"count = %@",count);
    
    //max
    NSDate *latestDate = [[self transactions] valueForKeyPath:@"@max.date"];
    NSLog(@"latestDate = %@",latestDate);
    
    //min
    NSDate *earliestDate = [self.transactions valueForKeyPath:@"@min.date"];
    NSLog(@"earliestDate = %@",earliestDate);
    
    //sum
    NSNumber *amountSum = [self.transactions valueForKeyPath:@"@sum.amount"];
    NSLog(@"amountSum = %@",amountSum);

    
    //@distinctUnionOfObjects
    NSArray *distinctPayees = [self.transactions valueForKeyPath:@"@distinctUnionOfObjects.payee"];
    NSLog(@"distinctPayees = %@",distinctPayees);
    
    //@unionOfObjects
    NSArray *payees = [self.transactions valueForKeyPath:@"@unionOfObjects.payee"];
    NSLog(@"payees = %@",payees);
    
    
    NSArray* arrayOfArrays = @[self.transactions, self.moreTransactions];
    
    //@distinctUnionOfArrays
    NSArray *collectedDistinctPayees = [arrayOfArrays valueForKeyPath:@"@distinctUnionOfArrays.payee"];
    NSLog(@"collectedDistinctPayees = %@",collectedDistinctPayees);
    
    //@unionOfArrays
    NSArray *collectedPayees = [arrayOfArrays valueForKeyPath:@"@unionOfArrays.payee"];
    NSLog(@"collectedPayees = %@",collectedPayees);
    
    
    
    //set value for none object
    
    MyClass *myClass = [MyClass new];
    ThreeFloats floats = {1., 2., 3.};
    NSValue* value = [NSValue valueWithBytes:&floats objCType:@encode(ThreeFloats)];
    [myClass setValue:value forKey:@"threeFloats"];
    
    //get value for none object
    NSValue* result = [myClass valueForKey:@"threeFloats"];
    NSLog(@"result = %@",result);
    NSLog(@"myClass = %@",myClass);
    
    
    

    
    
}



- (NSArray<Transaction *> *)transactions {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"transcations" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    NSError *error;
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
    if (error) {
        NSLog(@"error = %@",error);
        return nil;
    }
    
    NSMutableArray *array = @[].mutableCopy;
    for (NSDictionary *dic in jsonArray) {
        Transaction *transaction = [Transaction new];
        [transaction setValuesForKeysWithDictionary:dic];
        [array addObject:dic];
    }
    
//    NSLog(@"transcations = %@",array);
    return array;
}


- (NSArray<Transaction *> *)moreTransactions {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"moreTransactions" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    NSError *error;
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
    if (error) {
        NSLog(@"error = %@",error);
        return nil;
    }
    
    NSMutableArray *array = @[].mutableCopy;
    for (NSDictionary *dic in jsonArray) {
        Transaction *transaction = [Transaction new];
        [transaction setValuesForKeysWithDictionary:dic];
        [array addObject:dic];
    }
    
    //    NSLog(@"transcations = %@",array);
    return array;
}









@end
