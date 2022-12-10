//
//  PhotoAppUITests.swift
//  PhotoAppUITests
//
//  Created by Samuel_Lu on 2022/12/6.
//

import XCTest

final class SignupFlowUITests: XCTestCase {
    
    private var app: XCUIApplication!
    private var firstName: XCUIElement!
    private var lastName: XCUIElement!
    private var email: XCUIElement!
    private var password: XCUIElement!
    private var repeatPassword : XCUIElement!
    private var signupButton: XCUIElement!
    private var successButton: XCUIElement!
    private var memberPageButton: XCUIElement!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        app = XCUIApplication()
        app.launch()
        
        firstName = app.textFields["firstNameTextField"]
        lastName = app.textFields["lastNameTextField"]
        email = app.textFields["emailTextField"]
//        password = app.secureTextFields["passwordTextField"]
//        repeatPassword = app.secureTextFields["repeatPasswordTextField"]
        password = app.textFields["passwordTextField"]
        repeatPassword = app.textFields["repeatPasswordTextField"]
        signupButton = app.buttons["signupButton"]
        successButton = app.buttons["successOkButton"]
        memberPageButton = app.buttons["memberPageButton"]
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app = nil
        firstName = nil
        lastName = nil
        email = nil
        password = nil
        repeatPassword = nil
        signupButton = nil
        successButton = nil
        memberPageButton = nil
        
        try super.tearDownWithError()
    }

    func testSignupViewController_WhenViewLoaded_RequiredUIElementsAreEnabled() throws {
        
        XCTAssertTrue(firstName.isEnabled, "First name UITextField is not enabled for user interactions")
        XCTAssertTrue(lastName.isEnabled, "Last Name UITextField is not enabled for user interactions")
        XCTAssertTrue(email.isEnabled, "Email UITextField is not enabled for user interactions")
        XCTAssertTrue(password.isEnabled, "Password UITextField is not enabled for user interactions")
        XCTAssertTrue(repeatPassword.isEnabled, "Repeat password UITextField is not enabled for user interactions")
        XCTAssertTrue(signupButton.isEnabled, "signupButton is not enabled for user interactions")
        
    }
    
    func testViewController_WhenInvalidFormSubmitted_PresentsErrorAlertDialog() {
        // Arrange
        firstName.tap()
        firstName.typeText("S")
        
        lastName.tap()
        lastName.typeText("K")
        
        email.tap()
        email.typeText("@")
        
        password.tap()
        password.typeText("123456")
        
        repeatPassword.tap()
        repeatPassword.typeText("123")
        // Act
        signupButton.tap()
        // Assert
        XCTAssertTrue(app.alerts["errorAlertDialog"].waitForExistence(timeout: 1), "An Error Alert dialog was not presented when invalid signup form was submitted")
    }
    
    func testViewController_WhenValidFormSubmitted_PresentsSuccessAlertDialog() {
        // Arrange
        firstName.tap()
        firstName.typeText("Samuel")
        
        lastName.tap()
        lastName.typeText("Lu")
        
        email.tap()
        email.typeText("samuel@mail.com")
        
        password.tap()
        password.typeText("12345678")
        
        repeatPassword.tap()
        repeatPassword.typeText("12345678")
        // Act
        signupButton.tap()
        // Assert
        XCTAssertTrue(app.alerts["successAlertDialog"].waitForExistence(timeout: 3), "An Success Alert dialog was not presented when valid signup form was submitted")
        // Act
        successButton.tap()
        // Assert
        XCTAssertTrue(memberPageButton.isEnabled, "memberPageButton is not enabled for user interactions")
//        XCTAssertTrue(app.buttons["memberPageButton"].waitForExistence(timeout: 1), "memberPageButton is not enabled for user interactions when pressed successButton")


        
        
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
