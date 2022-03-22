import XCTest
@testable import SwiftToolShellExecutor

final class SwiftToolShellExecutorTests: XCTestCase {
    func testEcho() {
      let result = Shell.run("echo yoyoyo")
        XCTAssertEqual(result, "yoyoyo")
    }
    
    func testLS() {
        let result = Shell.run("ls")
        XCTAssertNotNil(result)
    }
    
    func testPWD() {
        let result = Shell.run("pwd")
        XCTAssertEqual(result, "/tmp")
    }
}
