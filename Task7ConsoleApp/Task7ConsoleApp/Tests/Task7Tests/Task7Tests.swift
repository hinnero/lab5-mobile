import XCTest
@testable import Task7ConsoleApp

final class Task7Tests: XCTestCase {

    func testAppendAndCount() {
        let m = DataManipulator(data: [])
        XCTAssertEqual(m.count(), 0)
        m.append("Test")
        XCTAssertEqual(m.count(), 1)
    }

    func testInsert() {
        let m = DataManipulator(data: ["A", "C"])
        m.insert("B", at: 1)
        XCTAssertEqual(m.getData(), ["A","B","C"])
    }

    func testRemoveLast() {
        let m = DataManipulator(data: ["X","Y"])
        m.removeLast()
        XCTAssertEqual(m.getData(), ["X"])
    }

    func testRemoveAt() {
        let m = DataManipulator(data: ["A","B","C"])
        m.remove(at: 1)
        XCTAssertEqual(m.getData(), ["A","C"])
    }

    func testRemoveAll() {
        let m = DataManipulator(data: ["A"])
        m.removeAll()
        XCTAssertEqual(m.count(), 0)
    }

    func testSortedByVowelCount() {
        let m = DataManipulator(data: ["bcd","aei","oop"])
        m.sortedByVowelCount()
        XCTAssertEqual(m.getData(), ["bcd","oop","aei"])
    }
}
