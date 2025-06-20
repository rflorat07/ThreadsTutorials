//
//  ProfileView.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 11/06/25.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    @Namespace var animation
    @State private var selectedFilter: ProfileThreadsFilter = .threads
    
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadsFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack(spacing: 20) {
                ProfileHeaderView(user: user)
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(Color.black)
                        .cornerRadius(8)
                }
                
                // User content list View
                UserContentListView()
       
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView(user: User.singleUser)
}
