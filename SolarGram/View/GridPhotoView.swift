//
//  GridPhotoView.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI

struct GridPhotoView: View {
    @EnvironmentObject var viewModel: SolarGramPostsViewModel
    var posts: [Post]
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum:geo.size.width/4))]) {
                    ForEach(posts) { post in
                        SquareImage(Image(uiImage: post.image!))
                        
                    }
                }
            }
        }

    }
}

struct GridPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        var sampleData: [Post] = [
            Post(photoID: "photo1", description: "Something really great", author: PublicPosts.currentUser,image: UIImage(named: "photo1")),
            Post(photoID: "photo2", description: "Something really great", author: User(name: "Chris", photoID: "chris"), image: UIImage(named: "photo2"))]
        GridPhotoView(posts: sampleData)
    }
}

