//
//  ContentView.swift
//  StubbedNetwork
//
//  Created by Trey Rogers on 5/25/24.
//

import SwiftUI

struct ContentView: View {
    @Bindable private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.users, id: \.id) { user in
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.headline)
                    Text(user.email)
                        .font(.subheadline)
                }
            }
            .navigationTitle("Users")
            .onAppear {
                viewModel.fetchUsers()
            }
            .alert(item: $viewModel.errorMessage) { errorMessage in
                Alert(title: Text("Error"), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
}

extension String: Identifiable {
    public var id: String { self }
}


#Preview {
    ContentView()
}
