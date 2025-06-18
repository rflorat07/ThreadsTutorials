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
                        VStack {
                            UserCell(user: user)
                            
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search...")
        }
    }
}

#Preview {
    ExploreView()
}
