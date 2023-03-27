//
//  PhotoRow.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI

struct PhotoRow: View {
    @EnvironmentObject var viewModel: SolarGramPostsViewModel
    var post: Post
    
    private let authorImageHeight: CGFloat = 30
    
    var body: some View {
        VStack(alignment: .leading) {
            authorView
            SquareImage(Image(uiImage: post.image!))
            descriptionView
            actionView
            #if os(macOS)
            Divider()
                .padding(.vertical)
            #endif
        }
    }
    
    var authorView: some View {
        HStack {
            SquareImage(Image(post.author.photoID))
                .frame(height: authorImageHeight)
                .clipShape(Circle())
            Text(post.author.name)
                .font(.headline)
            Spacer()

            Button {
                print("delete button pressed")
                viewModel.removePostFrom(post)
            } label: {
                if post.author.id == PublicPosts.currentUser.id{
                    Image(systemName: "trash")
                }
                    
            }
            .padding(.trailing, 8)
            .buttonStyle(.plain)
        }
        .padding(.leading, 8)
    }
    
    var actionView: some View {
        HStack {
            Button {
                viewModel.isFavorite(post)
            } label: {
                if post.isFavorite {
                    Image(systemName: "heart.fill")
                } else {
                    Image(systemName: "heart")
                }
            }.buttonStyle(.plain)
            
        }
        .padding(.leading, 8)
    }
    
    var descriptionView: some View {
        Text(post.description)
            .font(.caption)
            .padding(.leading, 8)
            .padding(.bottom, 8)

    }
}

struct PhotoRow_Previews: PreviewProvider {
    static var previews: some View {
        let test1 =  Post( description: "Something really great", author: PublicPosts.currentUser,image: UIImage(named: "photo1"))
        PhotoRow(post: test1)
    }
}

