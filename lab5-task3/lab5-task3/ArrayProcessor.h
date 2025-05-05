//
//  ArrayProcessor.h
//  ArrayApp
//
//  Created by Олег Райцев on 2025-05-05.
//  Описание: интерфейс класса для работы с массивами.
//

#import <Foundation/Foundation.h>

@interface ArrayProcessor : NSObject

/// Выводит элементы immutable-массива в консоль.
- (void)printImmutableArray:(NSArray<NSString *> *)array;

/// Создаёт и возвращает пустой mutable-массив.
- (NSMutableArray<NSString *> *)createEmptyMutableArray;

/// Считывает N строк из консоли и возвращает массив.
- (NSMutableArray<NSString *> *)readStringsFromConsole:(NSUInteger)count;

/// Возвращает число элементов в любом массиве.
- (NSUInteger)countOfArray:(NSArray *)array;

/// Добавляет элемент в конец mutable-массива.
- (void)addElement:(NSString *)element toMutableArray:(NSMutableArray<NSString *> *)array;

/// Вставляет элемент по индексу в mutable-массив.
- (void)insertElement:(NSString *)element
              atIndex:(NSUInteger)index
      intoMutableArray:(NSMutableArray<NSString *> *)array;

/// Удаляет последний элемент mutable-массива.
- (void)removeLastElementFromMutableArray:(NSMutableArray<NSString *> *)array;

/// Удаляет элемент по индексу из mutable-массива.
- (void)removeElementAtIndex:(NSUInteger)index
           fromMutableArray:(NSMutableArray<NSString *> *)array;

/// Удаляет все элементы из mutable-массива.
- (void)removeAllElementsFromMutableArray:(NSMutableArray<NSString *> *)array;

@end
