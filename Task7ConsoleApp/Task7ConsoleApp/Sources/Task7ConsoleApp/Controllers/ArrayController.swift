import Foundation

public class ArrayController {
    private let view: ConsoleView
    private let manipulator: DataManipulator

    public init(view: ConsoleView) {
        self.view = view
        // Инициалально — пустой изменяемый массив
        self.manipulator = DataManipulator(data: [])
    }

    public func run() {
        loop: while true {
            view.showMenu()
            switch view.readChoice() {
            case "1":
                view.showImmutableSample()
            case "2":
                manipulator.setData([])
                view.showMessage("Создан пустой изменяемый массив.")
            case "3":
                let items = view.readArrayInput()
                manipulator.setData(items)
                view.showMessage("Данные установлены.")
            case "4":
                let immutableCount = view.sampleImmutable.count
                let mutableCount = manipulator.count()
                view.showMessage("Immutable count: \(immutableCount), Mutable count: \(mutableCount)")
            case "5":
                view.showData(manipulator.getData())
            case "6":
                if let element = view.readElement() {
                    manipulator.append(element)
                    view.showMessage("Добавлено.")
                }
            case "7":
                if let (element, idx) = view.readElementWithIndex() {
                    manipulator.insert(element, at: idx)
                    view.showMessage("Вставлено.")
                }
            case "8":
                manipulator.removeLast()
                view.showMessage("Удалён последний элемент.")
            case "9":
                if let idx = view.readIndex() {
                    manipulator.remove(at: idx)
                    view.showMessage("Удалён элемент по индексу.")
                }
            case "10":
                manipulator.removeAll()
                view.showMessage("Все элементы удалены.")
            case "11":
                manipulator.sortedByVowelCount()
                view.showData(manipulator.getData())
            case "0":
                break loop
            default:
                view.showMessage("Неверный выбор.")
            }
        }
    }
}
