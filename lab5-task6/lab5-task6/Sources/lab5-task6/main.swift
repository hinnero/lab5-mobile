import Foundation
import DictionaryModule

let avtoManager = DictionaryManager<String, Avto>()
let vendorManager = DictionaryManager<String, Vendor>(initial: [
    "Toyota": Vendor(name: "Toyota", country: "Japan"),
    "Ford": Vendor(name: "Ford", country: "USA")
])

func printMenu() {
    print("""
    
    ===== МЕНЮ =====
    1. Инициализировать словарь автомобилей
    2. Инициализировать словарь производителей
    3. Ввести пары (model:cost)
    4. Количество автомобилей
    5. Найти автомобиль по модели
    6. Показать все автомобили
    7. Добавить автомобиль
    8. Изменить стоимость автомобиля
    9. Сортировка по модели
    10. Сортировка по стоимости
    11. Удалить по модели
    12. Удалить всё
    0. Выход
    """)
}

func readLineNonEmpty() -> String {
    while true {
        if let input = readLine(), !input.isEmpty { return input }
        print("Пустой ввод. Повторите:")
    }
}

menuLoop: while true {
    printMenu()
    let choice = readLineNonEmpty()

    switch choice {
    case "1":
        print("Словарь автомобилей инициализирован.")
    case "2":
        print("Словарь производителей уже инициализирован.")
    case "3":
        print("Введите пары model:cost через пробел:")
        let input = readLineNonEmpty()
        for pair in input.split(separator: " ") {
            let parts = pair.split(separator: ":")
            if parts.count == 2, let cost = Double(parts[1]) {
                let model = String(parts[0])
                avtoManager.insert(key: model, value: Avto(model: model, cost: cost))
            }
        }
        print("Автомобили добавлены.")
    case "4":
        print("Всего автомобилей: \(avtoManager.count())")
    case "5":
        print("Введите модель:")
        let key = readLineNonEmpty()
        if let a = avtoManager.getValue(for: key) {
            print("Найдено: \(a.model), стоимость \(a.cost)")
        } else {
            print("Автомобиль не найден.")
        }
    case "6":
        for (k, v) in avtoManager.allItems() {
            print("\(k): \(v.model), \(v.cost)")
        }
    case "7":
        print("Введите model:cost")
        let parts = readLineNonEmpty().split(separator: ":")
        if parts.count == 2, let cost = Double(parts[1]) {
            let model = String(parts[0])
            avtoManager.insert(key: model, value: Avto(model: model, cost: cost))
            print("Добавлено.")
        }
    case "8":
        print("Введите модель:")
        let key = readLineNonEmpty()
        print("Введите новую стоимость:")
        if let cost = Double(readLineNonEmpty()) {
            avtoManager.modify(key: key, newValue: Avto(model: key, cost: cost))
            print("Изменено.")
        }
    case "9":
        for (k, v) in avtoManager.sortedByKey() {
            print("\(k): \(v.model), \(v.cost)")
        }
    case "10":
        for (k, v) in avtoManager.sortedByValue() {
            print("\(k): \(v.model), \(v.cost)")
        }
    case "11":
        print("Введите модель:")
        let key = readLineNonEmpty()
        avtoManager.remove(key: key)
        print("Удалено.")
    case "12":
        avtoManager.removeAll()
        print("Все элементы удалены.")
    case "0":
        break menuLoop
    default:
        print("Неверный выбор.")
    }
}
