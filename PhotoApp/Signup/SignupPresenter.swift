//
//  SignupPresenter.swift
//  PhotoApp
//
//  Created by Samuel_Lu on 2022/10/17.
//

import Foundation

class SignupPresenter {
    
    private var formModelValidator: SignupModelValidatorProtocol
    
    init(formModelValidator: SignupModelValidatorProtocol) {
        self.formModelValidator = formModelValidator
    }
    
    func processUserSignup(formModel: SignupFormModel) {
        
    }
}
