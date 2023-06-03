import XCTest
@testable import MyExtensionPackage

final class MyExtensionPackage: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ExtensionPackage().text, "Hello, World!")
    }
}
