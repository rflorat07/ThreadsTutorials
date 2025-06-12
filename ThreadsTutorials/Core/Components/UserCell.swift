//
//  UserCell.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 12/06/25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading) {
                Text("Max Verstappen")
                    .fontWeight(.semibold)
                
                Text("Red Bull Racing")
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
    UserCell()
}
