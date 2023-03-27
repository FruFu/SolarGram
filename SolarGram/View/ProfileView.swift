//
//  ProfileView.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: SolarGramPostsViewModel
    
//    let posts = viewModel.SolarGramPosts.filter { post in
//        post.author.id == PublicPosts.currentUser.id
//    }
    
    
    private let headerHeight: CGFloat = 120
    
    var body: some View {
        VStack {
            headerView
            GridPhotoView(posts: viewModel.currentUserPosts)
        }
    }
    
    var headerView: some View {
        VStack {
            SquareImage(Image(viewModel.currentUserInfoPhotoID))
                .clipShape(Circle())
            Text(viewModel.currentUserInfoName)
                .font(.title)
        }
        .frame(height: headerHeight)
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().environmentObject(SolarGramPostsViewModel())
    }
}
