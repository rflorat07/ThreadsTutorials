//
//  RegistrationViewModel.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 17/06/25.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    @Published  var email: String = ""
    @Published  var password: String = ""
    @Published  var fullName: String = ""
    @Published  var username: String = ""
    
    @MainActor
    func createUser() async throws {
       try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullname: fullName,
            username: username)
    }
}

