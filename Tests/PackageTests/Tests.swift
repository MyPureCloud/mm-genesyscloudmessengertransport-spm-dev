import XCTest
@testable import MessengerTransport

final class PackageTests: XCTestCase {
    func testImport() {
        XCTAssertNotNil(MessengerTransport.MessagingClient.self)
    }
}
