import XCTest
@testable import WFAPPCore

final class WFAPPCoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(WFAPPCore().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
