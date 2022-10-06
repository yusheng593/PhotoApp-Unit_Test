//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by yusheng Lu on 2022/10/6.
//

import Foundation

class SignupFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
        if firstName.isEmpty || firstName.count < 2 || firstName.count > 10 {
            returnValue = false
        }
        
        return returnValue
    }
    
}
