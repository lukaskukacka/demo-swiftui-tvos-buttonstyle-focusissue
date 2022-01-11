import XCTest

class UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    func testFocusedButtonExists() {
        let app = XCUIApplication()
        app.launch()

        /// Primitive way to find focused button
        let hasFocusPredicate = NSPredicate(format: "hasFocus == true")
        let focusedButton = app.descendants(matching: .button).element(matching: hasFocusPredicate)

        /// Button should become available and be focused
        XCTAssertTrue(focusedButton.waitForExistence(timeout: 3))
        XCTAssertTrue(focusedButton.hasFocus)
    }
}

