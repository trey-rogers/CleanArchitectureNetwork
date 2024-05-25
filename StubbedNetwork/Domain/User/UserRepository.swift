//
//  UserRepository.swift
//  StubbedNetwork
//
//  Created by Trey Rogers on 5/25/24.
//

import Foundation

protocol UserRepository {
    func fetchUsers() async throws -> [User]
}
