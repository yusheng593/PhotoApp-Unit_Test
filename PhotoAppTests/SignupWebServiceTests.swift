//
//  SignupWebServiceTests.swift
//  PhotoAppTests
//
//  Created by Samuel_Lu on 2022/10/7.
//

import XCTest
@testable import PhotoApp

class SignupWebServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupWebService_WhenGivenSuccessFullResponse_ReturnsSuccess() {
        let sut = SignupWebService()
        let signupFormRequestModel = SignupFormRequestModel(firstName: "Samuel", lastName: "lu", email: "samuel@email", password: "12345678")
        sut.signup(withForm: signupFormRequestModel) { (signupRequestModel, error) in
            
            
        }
    }

}
