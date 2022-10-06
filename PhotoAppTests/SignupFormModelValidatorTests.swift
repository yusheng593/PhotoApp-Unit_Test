//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by yusheng Lu on 2022/10/6.
//

import XCTest
@testable import PhotoApp

class SignupFormModelValidatorTests: XCTestCase {
    
    var sut: SignupFormModelValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testSignFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        // Arrange
        
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Samuel")
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValidtrue() should returned TRUE for a valid first name but returned FALSE")
    }
    
    func testSignFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        // Arrange
        
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValidtrue() should have returned FALSE for a first name that is shorter than 2 characters but is has returned TRUE")
    }
    
    func testSignFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        
        // Arrange
        
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Samuel Samuel")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValidtrue() should have returned FALSE for a first name that is longer than 10 characters but is has returned TRUE")
    }

    

}
