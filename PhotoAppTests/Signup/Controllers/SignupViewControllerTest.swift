//
//  SignupViewControllerTest.swift
//  PhotoAppTests
//
//  Created by Samuel_Lu on 2022/11/8.
//

import XCTest
@testable import PhotoApp

class SignupViewControllerTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupViewController_WhenCreated_HasRequiredTextFieldsEmpty() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController
    }
}
