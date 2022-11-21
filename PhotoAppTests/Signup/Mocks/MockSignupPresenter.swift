//
//  MockSignupPresenter.swift
//  PhotoAppTests
//
//  Created by Samuel_Lu on 2022/11/14.
//

import Foundation
@testable import PhotoApp

class MockSignupPresenter: SignupPresenterProtocol {
    var processUserSignupCalled = false
    
    required init(formModelValidator: PhotoApp.SignupModelValidatorProtocol, webservice: PhotoApp.SignupWebServiceProtocol, delegate: PhotoApp.SignupViewDelegateProtocol) {
        //TODO:
    }
    
    func processUserSignup(formModel: PhotoApp.SignupFormModel) {
        processUserSignupCalled = true
    }
    
    
}
