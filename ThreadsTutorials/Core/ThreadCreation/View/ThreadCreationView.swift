//
//  ThreadCreationView.swift
//  ThreadsTutorials
//
//  Created by Roger Florat Gutierrez on 11/06/25.
//

import SwiftUI

struct ThreadCreationView: View {
    
    @State private var caption: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    CircularProfileImageView()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("maxverstappend1")
                            .fontWeight(.semibold)
                        
                        TextField("Start a new thread...", text: $caption, axis: .vertical)
                            
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !caption.isEmpty {
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                                
                        }
                    }

                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel") {
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Post") {
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    ThreadCreationView()
}
