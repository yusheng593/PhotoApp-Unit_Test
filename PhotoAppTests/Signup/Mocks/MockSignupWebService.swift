//
//  MockSignupWebService.swift
//  PhotoAppTests
//
//  Created by Samuel_Lu on 2022/10/18.
//

import Foundation
@testable import PhotoApp

class MockSignupWebService: SignupWebServiceProtocol {
    
    var isSignupMethodCalled:Bool = false
    var shouldReturnError:Bool = false
    
    func signup(withForm formModel: SignupFormRequestModel, completionHandler: @escaping (SignupResponseModel?, SignupError?) -> Void) {
        
        isSignupMethodCalled = true
        
        if shouldReturnError {
            completionHandler(nil, SignupError.failedRequest(description: "Signup request was not successful"))
        } else {
            let responseModel = SignupResponseModel(status: "Ok")
            completionHandler(responseModel, nil)
        }
    }
    
    
    
    
}
