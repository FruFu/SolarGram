//
//  ProfileView.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI

struct ProfileView: View {
        
    let posts = PublicPosts.sampleData.filter { post in
        post.author.id == PublicPosts.currentUser.id
    }
    
    private let headerHeight: CGFloat = 120
    
    var body: some View {
        VStack {
            headerView
            GridPhotoView(posts: posts)
        }
    }
    
    var headerView: some View {
        VStack {
            SquareImage(Image(PublicPosts.currentUser.photoID))
                .clipShape(Circle())
            Text(PublicPosts.currentUser.name)
                .font(.title)
        }
        .frame(height: headerHeight)
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
