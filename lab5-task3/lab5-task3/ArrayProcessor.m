//
//  ArrayProcessor.m
//  ArrayApp
//
//  Created by <Ваше Имя> on 2025-05-05.
//  Описание: реализация публичных и приватных методов.
//

#import "ArrayProcessor.h"

@interface ArrayProcessor ()

// Приватный метод для удаления элемента по индексу.
- (void)removeElementAtIndex:(NSUInteger)index
           fromMutableArray:(NSMutableArray<NSString *> *)array;

// Приватный метод для удаления последнего элемента.
- (void)removeLastElementFromMutableArray:(NSMutableArray<NSString *> *)array;

// Приватный метод для удаления всех элементов.
- (void)removeAllElementsFromMutableArray:(NSMutableArray<NSString *> *)array;

@end

@implementation ArrayProcessor

- (void)printImmutableArray:(NSArray<NSString *> *)array {
    NSLog(@"Immutable array contents:");
    for (NSString *s in array) {
        NSLog(@"%@", s);
    }
}

- (NSMutableArray<NSString *> *)createEmptyMutableArray {
    return [NSMutableArray array];
}

- (NSMutableArray<NSString *> *)readStringsFromConsole:(NSUInteger)count {
    NSMutableArray<NSString *> *result = [self createEmptyMutableArray];
    char buffer[256];
    for (NSUInteger i = 0; i < count; i++) {
        printf("Enter string %lu: ", (unsigned long)i+1);
        fgets(buffer, sizeof(buffer), stdin);
        NSString *str = [NSString stringWithCString:buffer
                                           encoding:NSUTF8StringEncoding];
        str = [str stringByTrimmingCharactersInSet:
               [NSCharacterSet newlineCharacterSet]];
        [result addObject:str];
    }
    return result;
}

- (NSUInteger)countOfArray:(NSArray *)array {
    return [array count];
}

- (void)addElement:(NSString *)element
   toMutableArray:(NSMutableArray<NSString *> *)array {
    [array addObject:element];
}

- (void)insertElement:(NSString *)element
             atIndex:(NSUInteger)index
      intoMutableArray:(NSMutableArray<NSString *> *)array {
    if (index <= array.count) {
        [array insertObject:element atIndex:index];
    } else {
        NSLog(@"Index %lu out of bounds for insertion", (unsigned long)index);
    }
}

#pragma mark - Private methods

- (void)removeElementAtIndex:(NSUInteger)index
           fromMutableArray:(NSMutableArray<NSString *> *)array {
    if (index < array.count) {
        [array removeObjectAtIndex:index];
    } else {
        NSLog(@"Index %lu out of bounds for removal", (unsigned long)index);
    }
}

- (void)removeLastElementFromMutableArray:(NSMutableArray<NSString *> *)array {
    if (array.count > 0) {
        [array removeLastObject];
    } else {
        NSLog(@"Array is empty, nothing to remove");
    }
}

- (void)removeAllElementsFromMutableArray:(NSMutableArray<NSString *> *)array {
    [array removeAllObjects];
}

@end
