//
//  CurrentUserProfileView.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 19/06/25.
//

import SwiftUI

struct CurrentUserProfileView: View {

    @StateObject var viewModel = CurrentUserProfileViewModel()
    
    private var currentUser: User? {
        return viewModel.currentUser
    }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: 20) {
                    
                    ProfileHeaderView(user: currentUser)
                    
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .frame(width: 352, height: 32)
                            .background(Color.white)
                            .cornerRadius(8)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(.systemGray4), lineWidth: 1)
                            }
                    }
                    
                    // User content list View
                    UserContentListView()
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
