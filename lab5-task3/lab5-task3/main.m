//
//  main.m
//  lab5-task3
//
//  Created by Олег Райцев on 5.05.25.
//

#import <Foundation/Foundation.h>
#import "ArrayProcessor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ArrayProcessor *proc = [[ArrayProcessor alloc] init];

        // Пример неизменяемого массива и вывод
        NSArray *immutable = @[@"hello", @"world", @"hi", @"objective", @"c"];
        [proc printImmutableArray:immutable];

        // Создание пустого mutable-массива
        NSMutableArray *mutable = [proc createEmptyMutableArray];

        // Ввод 3 строк с консоли
        NSMutableArray *input = [proc readStringsFromConsole:3];
        NSLog(@"Read %lu strings", (unsigned long)[proc countOfArray:input]);

        // Добавление элемента
        [proc addElement:@"newItem" toMutableArray:mutable];
        // Вставка по индексу
        [proc insertElement:@"inserted" atIndex:0 intoMutableArray:mutable];

        // Удаление последнего
        [proc removeLastElementFromMutableArray:mutable];
        // Удаление по индексу
        [proc removeElementAtIndex:0 fromMutableArray:mutable];
        // Удаление всех
        [proc removeAllElementsFromMutableArray:mutable];

        NSLog(@"Final mutable count: %lu", (unsigned long)[proc countOfArray:mutable]);
    }
    return 0;
}
