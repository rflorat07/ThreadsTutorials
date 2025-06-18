//
//  UserCell.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 12/06/25.
//

import SwiftUI

struct UserCell: View {
    let user: User
    
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.fullname)
                    .fontWeight(.semibold)
                
                Text(user.username)
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
            
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell(user: User.singleUser)
}
