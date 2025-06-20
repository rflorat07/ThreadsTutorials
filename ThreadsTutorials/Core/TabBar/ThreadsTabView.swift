//
//  ThreadsTabView.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 03/06/25.
//

import SwiftUI

struct ThreadsTabView: View {
    @State private var selectedTabIndex: Int = 0
    @State private var showCreateThreadsView: Bool = false
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            FeedView()
                .tabItem {
                    Image(systemName: selectedTabIndex == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTabIndex == 0 ? .fill : .none )
                }
                .onAppear{selectedTabIndex = 0}
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear{selectedTabIndex = 1}
                .tag(1)
            
            Text("")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear{selectedTabIndex = 2}
                .tag(2)
            
            ActivityView()
                .tabItem {
                    Image(systemName: selectedTabIndex == 3 ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTabIndex == 3 ? .fill : .none )
                }
                .onAppear{selectedTabIndex = 3}
                .tag(3)
            
            CurrentUserProfileView()
                .tabItem {
                    Image(systemName: selectedTabIndex == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTabIndex == 4 ? .fill : .none )
                }
                .onAppear{selectedTabIndex = 4}
                .tag(4)
        }
        .onChange(of: selectedTabIndex) {
            showCreateThreadsView = selectedTabIndex == 2
        }
        .sheet(isPresented: $showCreateThreadsView, onDismiss: {
            selectedTabIndex = 0
        }, content: {
            ThreadCreationView()
        })
        .tint(.black)
    }
}

#Preview {
    ThreadsTabView()
}
