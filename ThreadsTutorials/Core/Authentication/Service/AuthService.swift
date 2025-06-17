//
//  AuthService.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 17/06/25.
//

import FirebaseAuth

class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: User created with uid: \(result.user.uid)")
            
        } catch {
            print("DEBUG: Error creating user: \(error.localizedDescription)")
            throw error
        }
    }
}
