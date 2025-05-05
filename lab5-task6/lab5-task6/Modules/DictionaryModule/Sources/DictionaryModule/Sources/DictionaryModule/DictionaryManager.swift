public class DictionaryManager<Key: Hashable, Value> {
    private var dict: [Key: Value]

    public init(empty: Bool = true, initial: [Key: Value] = [:]) {
        self.dict = initial
    }

    public func count() -> Int {
        dict.count
    }

    public func insert(key: Key, value: Value) {
        dict[key] = value
    }

    public func getValue(for key: Key) -> Value? {
        dict[key]
    }

    public func allItems() -> [(Key, Value)] {
        Array(dict)
    }

    public func modify(key: Key, newValue: Value) {
        if dict[key] != nil {
            dict[key] = newValue
        }
    }

    public func remove(key: Key) {
        dict.removeValue(forKey: key)
    }

    public func removeAll() {
        dict.removeAll()
    }

    public func sortedByKey() -> [(Key, Value)] {
        dict.sorted { "\($0.key)" < "\($1.key)" }
    }

    public func sortedByValue<T: Comparable>() -> [(Key, Value)] where Value == T {
        dict.sorted { $0.value < $1.value }
    }
}
