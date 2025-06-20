//
//  ProfileVIewModel.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 18/06/25.
//

import Foundation
import Combine

class CurrentUserProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
            
    }
}
