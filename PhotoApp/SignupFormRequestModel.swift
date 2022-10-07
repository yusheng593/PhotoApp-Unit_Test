//
//  SignFormRequestModel.swift
//  PhotoApp
//
//  Created by yusheng Lu on 2022/10/7.
//

import Foundation

struct SignupFormRequestModel: Codable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
}
