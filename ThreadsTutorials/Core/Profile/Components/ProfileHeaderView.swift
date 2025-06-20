//
//  ProfileHeaderView.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 19/06/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    var user: User?
    
    init(user: User?) {
        self.user = user
    }
    
    var body: some View {
        HStack(alignment: .top) {
            // Bio and stats
            VStack(alignment: .leading, spacing: 12) {
                // Fullname and Username
                VStack(alignment: .leading, spacing: 4)
                {
                    Text(user?.fullname ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(user?.username ?? "")
                        .font(.subheadline)
                }
                
                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                
                Text("2 followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            CircularProfileImageView()
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.singleUser)
}
