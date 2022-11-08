//
//  SignupViewControllerTest.swift
//  PhotoAppTests
//
//  Created by Samuel_Lu on 2022/11/8.
//

import XCTest
@testable import PhotoApp

class SignupViewControllerTest: XCTestCase {
    
    var storyboard: UIStoryboard!
    var sut: SignupViewController!

    override func setUpWithError() throws {
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: "SignupViewController") as SignupViewController
        sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        storyboard = nil
        sut = nil
    }

    func testSignupViewController_WhenCreated_HasRequiredTextFieldsEmpty() {
        
        XCTAssertEqual(sut.firstNameTextField.text, "", "First name text field was not empty when the view controller initially loaded")
        XCTAssertEqual(sut.lastNameTextField.text, "", "Last name text field was not empty when the view controller initially loaded")
        XCTAssertEqual(sut.emailTextField.text, "", "Email text field was not empty when the view controller initially loaded")
        XCTAssertEqual(sut.passwordTextField.text, "", "Password text field was not empty when the view controller initially loaded")
        XCTAssertEqual(sut.repeatPasswordTextField.text, "", "Repeat Password text field was not empty when the view controller initially loaded")
    }
}
