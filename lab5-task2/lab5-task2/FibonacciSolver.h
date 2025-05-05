//
//  FibonacciSolver.h
//  lab5-task2
//
//  Created by Олег Райцев on 5.05.25.
//

#import <Foundation/Foundation.h>

@interface FibonacciSolver : NSObject

/// Возвращает массив всех нечётных чисел Фибоначчи, не превышающих A.
+ (NSArray<NSNumber *> *)oddFibsUpTo:(NSInteger)A;

@end
