//
//  LoginViewModel.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 17/06/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published  var email: String = ""
    @Published  var password: String = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
