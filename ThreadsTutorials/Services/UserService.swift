//
//  UserService.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 18/06/25.
//

import FirebaseAuth
import FirebaseFirestore

class UserService   {
    static let shared = UserService()
    
    @Published var currentUser: User?
    
    init() {
        Task { try? await fetchCurrentUser() }
    }
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try? snapshot.data(as: User.self)
        self.currentUser = user
        
        print("DEBUG: Current user fetched: \(String(describing: user))")
    }
    
    static func fetchUser() async throws -> [User] {
        guard let currentUid = Auth.auth().currentUser?.uid else { return [] }
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let users = snapshot.documents.compactMap({try? $0.data(as: User.self)})
        return users.filter({ $0.id != currentUid })
    }
    
    func reset() {
        self.currentUser = nil
    }
}
