//
//  AuthService.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 17/06/25.
//

import FirebaseAuth

class AuthService {
    
    static let shared = AuthService()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: User created with uid: \(result.user.uid)")
            
        } catch {
            print("DEBUG: Error creating user: \(error.localizedDescription)")
            throw error
        }
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: User created with uid: \(result.user.uid)")
            
        } catch {
            print("DEBUG: Error creating user: \(error.localizedDescription)")
            throw error
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut() // Signs Out on Backend
        self.userSession = nil // This removes session locally and updates routing
    }
}
