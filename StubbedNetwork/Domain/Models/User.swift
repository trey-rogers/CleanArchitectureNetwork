//
//  User.swift
//  StubbedNetwork
//
//  Created by Trey Rogers on 5/25/24.
//

import Foundation

struct User: Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
}
