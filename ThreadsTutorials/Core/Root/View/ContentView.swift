//
//  ContentView.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 03/06/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    
    var body: some View {
        Group
        {
            if viewModel.userSession != nil {
                ThreadsTabView()
            } else {
             LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
