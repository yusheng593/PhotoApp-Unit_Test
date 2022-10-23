//
//  SignupViewDelegateProtocol.swift
//  PhotoApp
//
//  Created by yusheng Lu on 2022/10/23.
//

import Foundation

protocol SignupViewDelegateProtocol: AnyObject {
    func successfullSignup()
    func errorHandler(error: SignupError)
}
