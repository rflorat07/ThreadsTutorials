//
//  EditProfileView.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 16/06/25.
//

import SwiftUI

struct EditProfileView: View {
    
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack
            {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                
                VStack {
                    // Name and Profile Image
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            
                            Text("Chalres Leclerc")
                            
                        }
                        
                        
                        Spacer()
                        
                        CircularProfileImageView()
                    }
                    
                    Divider()
                    
                    // Bio Field
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        
                        TextField("Add a bio...", text: $bio, axis: .vertical)
                        
                    }
                    
                    Divider()
                    
                    // Link Field
                    VStack(alignment: .leading) {
                        Text("Link")
                            .fontWeight(.semibold)
                        
                        TextField("Add a link...", text: $link)
                        
                    }
                    .font(.footnote)
                    
                    Divider()
                    
                    Toggle("Private", isOn: $isPrivateProfile)
                    
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("Edid Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel")
                    {
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done")
                    {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
            
            
        }
    }
}

#Preview {
    EditProfileView()
}
