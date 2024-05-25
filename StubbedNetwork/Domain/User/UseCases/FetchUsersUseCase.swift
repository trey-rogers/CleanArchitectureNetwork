//
//  FetchUsersUseCase.swift
//  StubbedNetwork
//
//  Created by Trey Rogers on 5/25/24.
//

import Foundation

class FetchUsersUseCase {
    private let userRepository: UserRepository
    
    init(userRepository: UserRepository = DefaultUserRepository()) {
        self.userRepository = userRepository
    }
    
    func execute() async throws -> [User] {
        return try await userRepository.fetchUsers()
    }
}
