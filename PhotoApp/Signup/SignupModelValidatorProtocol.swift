//
//  SignupModelValidatorProtocol.swift
//  PhotoApp
//
//  Created by Samuel_Lu on 2022/10/17.
//

import Foundation

protocol SignupModelValidatorProtocol {
    
    func isFirstNameValid(firstName: String) -> Bool
    
    func isLastNameValid(lastName: String) -> Bool
    
    func isValidEmailFormat(email: String) -> Bool
    
    func isPasswordValid(password: String) -> Bool
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool
}
