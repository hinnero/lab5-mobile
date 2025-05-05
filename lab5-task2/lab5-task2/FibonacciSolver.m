//
//  FibonacciSolver.m
//  lab5-task2
//
//  Created by Олег Райцев on 5.05.25.
//

#import "FibonacciSolver.h"

@implementation FibonacciSolver

+ (NSArray<NSNumber *> *)oddFibsUpTo:(NSInteger)A {
    NSMutableArray<NSNumber *> *result = [NSMutableArray array];
    NSInteger a = 1, b = 1;
    while (a <= A) {
        if (a % 2 != 0) {
            [result addObject:@(a)];
        }
        // next Fibonacci
        NSInteger next = a + b;
        a = b;
        b = next;
    }
    return [result copy];
}

@end
