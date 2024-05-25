//
//  ContentView+ViewModel.swift
//  StubbedNetwork
//
//  Created by Trey Rogers on 5/25/24.
//

import Foundation

extension ContentView {
    @Observable
    class ViewModel {
        var users: [User] = []
        var errorMessage: String?

        private let fetchUsersUseCase: FetchUsersUseCase
        
        init(fetchUsersUseCase: FetchUsersUseCase = FetchUsersUseCase()) {
            self.fetchUsersUseCase = fetchUsersUseCase
        }
        
        func fetchUsers() {
            Task {
                do {
                    self.users = try await fetchUsersUseCase.execute()
                } catch {
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
