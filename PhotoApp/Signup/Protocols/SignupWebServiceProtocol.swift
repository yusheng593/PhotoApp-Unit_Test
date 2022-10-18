//
//  SignupWebServiceProtocol.swift
//  PhotoApp
//
//  Created by Samuel_Lu on 2022/10/18.
//

import Foundation

protocol SignupWebServiceProtocol {
    func signup(withForm formModel: SignupFormRequestModel, completionHandler: @escaping (SignupResponseModel?, SignupError?) -> Void)
}
