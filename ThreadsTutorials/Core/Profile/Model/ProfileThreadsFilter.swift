//
//  ProfileThreadsFilter.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 16/06/25.
//

import Foundation

enum ProfileThreadsFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
