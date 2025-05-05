import XCTest
@testable import DictionaryModule

final class Task6Tests: XCTestCase {

    func testInsert() {
        let manager = DictionaryManager<String, Int>()
        manager.insert(key: "one", value: 1)
        XCTAssertEqual(manager.getValue(for: "one"), 1)
    }

    func testModify() {
        let manager = DictionaryManager<String, Int>(initial: ["x": 10])
        manager.modify(key: "x", newValue: 20)
        XCTAssertEqual(manager.getValue(for: "x"), 20)
    }

    func testRemove() {
        let manager = DictionaryManager<String, Int>(initial: ["x": 10])
        manager.remove(key: "x")
        XCTAssertNil(manager.getValue(for: "x"))
    }

    func testCount() {
        let manager = DictionaryManager<String, Int>(initial: ["a": 1, "b": 2])
        XCTAssertEqual(manager.count(), 2)
    }
}
