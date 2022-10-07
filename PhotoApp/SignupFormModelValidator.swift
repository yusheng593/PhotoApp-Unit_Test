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
        
        if firstName.count < SignupConstants.firstNameMinLength || firstName.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        
        return returnValue
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        var returnValue = true
        
        if lastName.count < SignupConstants.lastNameMinLength {
            returnValue = false
        }
        
        return returnValue
    }
    
    func isEmailValid(email: String) -> Bool {
        var returnValue = true
        
        if !email.contains(SignupConstants.emailFormat) {
            returnValue = false
        }
        
        return returnValue
    }
    
    func isPasswordRepeatValid(passowrd: String, repeatPassword: String) -> Bool {
        return passowrd == repeatPassword
    }
    
}
