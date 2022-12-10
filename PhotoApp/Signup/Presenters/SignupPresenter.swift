//
//  SignupPresenter.swift
//  PhotoApp
//
//  Created by Samuel_Lu on 2022/10/17.
//

import Foundation

class SignupPresenter: SignupPresenterProtocol {
    
    private var formModelValidator: SignupModelValidatorProtocol
    private var webservice: SignupWebServiceProtocol
    private weak var delegate: SignupViewDelegateProtocol?
    
    required init(formModelValidator: SignupModelValidatorProtocol, webservice: SignupWebServiceProtocol, delegate: SignupViewDelegateProtocol) {
        self.formModelValidator = formModelValidator
        self.webservice = webservice
        self.delegate = delegate
    }
    
    func processUserSignup(formModel: SignupFormModel) {
        
        if !formModelValidator.isFirstNameValid(firstName: formModel.firstName) {
            delegate?.errorHandler(error: SignupError.invalidFirstName)
            return
        }
        
        if !formModelValidator.isLastNameValid(lastName: formModel.lastName) {
            delegate?.errorHandler(error: SignupError.invalidLastName)
            return
        }
        
        if !formModelValidator.isValidEmailFormat(email: formModel.email) {
            delegate?.errorHandler(error: SignupError.invalidEmail)
            return
        }
        
        if !formModelValidator.isPasswordValid(password: formModel.password) {
            delegate?.errorHandler(error: SignupError.invalidPassword)
            return
        }
        
        if !formModelValidator.doPasswordsMatch(password: formModel.password, repeatPassword: formModel.repeatPassword) {
            delegate?.errorHandler(error: SignupError.passwordsDoNotMatch)
            return
        }
        
        let requestModel = SignupFormRequestModel(firstName: formModel.firstName, lastName: formModel.lastName, email: formModel.email, password: formModel.password)
        
        webservice.signup(withForm: requestModel) { [weak self] requestModel, error in
            
            if let error = error {
                self?.delegate?.errorHandler(error: error)
                return
            }
            
            if let _ = requestModel {
                self?.delegate?.successfullSignup()
                return
            }
        }
    }
}
