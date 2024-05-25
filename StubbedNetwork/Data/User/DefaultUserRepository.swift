//
//  DefaultUserRepository.swift
//  StubbedNetwork
//
//  Created by Trey Rogers on 5/25/24.
//

import Foundation

class DefaultUserRepository: UserRepository {
    func fetchUsers() async throws -> [User] {
        let endpoint = UserEndpoint()
        return try await NetworkManager.shared.request(endpoint, responseType: [User].self)
    }
}
