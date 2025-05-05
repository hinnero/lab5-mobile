import Foundation

public class DataManipulator {
    private var data: [String]?

    public init(data: [String]?) {
        self.data = data
    }

    public func getData() -> [String]? {
        data
    }

    public func setData(_ newData: [String]?) {
        data = newData
    }

    public func count() -> Int {
        data?.count ?? 0
    }

    public func append(_ element: String) {
        if data == nil {
            data = [element]
        } else {
            data!.append(element)
        }
    }

    public func insert(_ element: String, at index: Int) {
        guard var arr = data, index >= 0, index <= arr.count else { return }
        arr.insert(element, at: index)
        data = arr
    }

    public func removeLast() {
        data?.popLast()
    }

    public func remove(at index: Int) {
        guard var arr = data, index >= 0, index < arr.count else { return }
        arr.remove(at: index)
        data = arr
    }

    public func removeAll() {
        data?.removeAll()
    }

    /// Сортирует массив строк по возрастанию количества гласных в каждой строке
    public func sortedByVowelCount() {
        data = data?.sorted { vowelCount(in: $0) < vowelCount(in: $1) }
    }

    private func vowelCount(in s: String) -> Int {
        let vowels = CharacterSet(charactersIn: "aeiouAEIOUаеиоуыэюяАЕИОУЫЭЮЯ")
        return s.unicodeScalars.filter { vowels.contains($0) }.count
    }
}
