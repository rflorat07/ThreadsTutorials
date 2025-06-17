//
//  ContentViewModel.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 17/06/25.
//

import Foundation
import Combine
import FirebaseAuth

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
    
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession
            .sink{ [weak self] userSession in
                self?.userSession = userSession
            }.store(in: &cancellables)
    }
}
