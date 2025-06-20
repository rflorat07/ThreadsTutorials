//
//  ExploreView.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 11/06/25.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var searchText: String = ""
    @StateObject var viewModel = ExploreViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            VStack {
                                UserCell(user: user)
                                
                                Divider()
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search...")
        }
    }
}

#Preview {
    ExploreView()
}
