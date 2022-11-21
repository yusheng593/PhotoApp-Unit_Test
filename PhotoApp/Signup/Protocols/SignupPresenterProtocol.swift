//
//  SignupPresenterProtocol.swift
//  PhotoApp
//
//  Created by Samuel_Lu on 2022/11/14.
//

import Foundation

protocol SignupPresenterProtocol: AnyObject {
    init(formModelValidator: SignupModelValidatorProtocol, webservice: SignupWebServiceProtocol, delegate: SignupViewDelegateProtocol)
    
    func processUserSignup(formModel: SignupFormModel)
}
