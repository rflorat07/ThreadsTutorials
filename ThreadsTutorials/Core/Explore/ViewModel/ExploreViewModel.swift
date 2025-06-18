//
//  ExploreViewModel.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 18/06/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers()}
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUser()
    }
    
}
