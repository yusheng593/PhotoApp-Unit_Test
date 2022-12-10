//
//  SignupConstants.swift
//  PhotoApp
//
//  Created by yusheng Lu on 2022/10/6.
//

import Foundation

struct SignupConstants {
    static let firstNameMinLength = 2
    static let firstNameMaxLength = 10
    static let lastNameMinLength = 2
    static let lastNameMaxLength = 10
    static let emailFormat = "@"
    static let passwordMinLength = 8
    static let passwordMaxLength = 16
    static let signupURLString = "https://tlyqhtlbn8.execute-api.us-east-1.amazonaws.com/prod/signup-mock-service/users"
}
