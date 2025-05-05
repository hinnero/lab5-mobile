//
//  main.m
//  lab5-task2
//
//  Created by Олег Райцев on 5.05.25.
//

#import <Foundation/Foundation.h>
#import "FibonacciSolver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger limit = 100;  // пример A = 100
        NSArray<NSNumber *> *oddFibs = [FibonacciSolver oddFibsUpTo:limit];
        NSLog(@"Odd Fibonacci numbers ≤ %ld: %@", (long)limit, oddFibs);
    }
    return 0;
}
