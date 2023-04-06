import XCTest
@testable import FileReader

final class FileReaderTests: XCTestCase {
    func testExample() throws {
        // XCTest Documenation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
        XCTAssertEqual(FileReader.read(fileName: "hello.txt"), "Hello World")
    }
}
