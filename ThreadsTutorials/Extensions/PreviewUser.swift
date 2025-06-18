//
//  PreviewUser.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 18/06/25.
//

import Foundation


extension User {
    
    static let singleUser = User(
        id: NSUUID().uuidString,
        fullname: "Max Verstappen",
        email: "max.verstappen@gmail.com",
        username: "max_verstappen"
    )
    
}
