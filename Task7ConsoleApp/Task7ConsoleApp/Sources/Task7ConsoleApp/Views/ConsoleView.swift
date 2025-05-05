import Foundation

public class ConsoleView {
    /// Пример неизменяемого массива для демонстрации
    public let sampleImmutable = ["Swift", "Optional", "Array", "Controller"]

    public func showMenu() {
        print("""
        
        ===== МЕНЮ =====
        1. Показать неизменяемый массив
        2. Создать пустой изменяемый массив
        3. Ввести элементы в массив (через пробел)
        4. Подсчитать количество элементов (immutable & mutable)
        5. Вывести массив
        6. Добавить элемент в конец
        7. Вставить элемент по индексу
        8. Удалить последний элемент
        9. Удалить элемент по индексу
        10. Удалить все элементы
        11. Сортировать по количеству гласных
        0. Выход
        """)
    }

    public func readChoice() -> String {
        print("Выберите пункт:")
        return readLine() ?? ""
    }

    public func showImmutableSample() {
        print("Immutable Array:", sampleImmutable)
    }

    public func readArrayInput() -> [String] {
        print("Введите элементы через пробел:")
        let input = readLine() ?? ""
        return input.split(separator: " ").map(String.init)
    }

    public func showData(_ data: [String]?) {
        if let arr = data {
            print("Current array:", arr)
        } else {
            print("Массив отсутствует.")
        }
    }

    public func readElement() -> String? {
        print("Введите элемент:")
        return readLine()
    }

    public func readElementWithIndex() -> (String, Int)? {
        print("Введите элемент и индекс через пробел (e.g. Hello 2):")
        guard let line = readLine() else { return nil }
        let parts = line.split(separator: " ")
        if parts.count == 2, let idx = Int(parts[1]) {
            return (String(parts[0]), idx)
        }
        return nil
    }

    public func readIndex() -> Int? {
        print("Введите индекс:")
        if let s = readLine(), let idx = Int(s) {
            return idx
        }
        return nil
    }

    public func showMessage(_ msg: String) {
        print(msg)
    }
}
