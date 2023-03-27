//
//  SolarGramPostsViewModel.swift
//  SolarGram
//
//  Created by Edward Fu on 3/18/23.
//

import SwiftUI


class SolarGramPostsViewModel: ObservableObject {
    // MARK: - Connect to the Model
    
    @Published private var model: PublicPosts = PublicPosts()
    
    
    var SolarGramPosts: [Post] {
        model.sampleData
    }
    

    
    var currentUserPosts: [Post] {
            let filteredPosts = model.sampleData.filter { post in
                post.author.id == PublicPosts.currentUser.id
            }
        return filteredPosts.reversed()
    }
    var currentUserInfoPhotoID:  String {
        return PublicPosts.currentUser.photoID
    }
    var currentUserInfoName: String{
        return PublicPosts.currentUser.name
    }
    
    func addPostFrom(image: UIImage?) {

        // make sure the optional is an actual image
        guard let image else {return}
        
        // you must do this on main thread for UI to update properly
        DispatchQueue.main.async {
            // create a new post object, it might look like this, but you can adapt as needed in your project.
            let newPost = Post(photoID: UUID().uuidString, description: "Something New", isFavorite: false, author: PublicPosts.currentUser, image: UIImage(named: "photo1"))

            // call some function on the model to add the new post to the array of posts, you can do this how you like, but the logic should be in the model
            self.model.add(newPost, image: image)
        }
    }
    
    func removePostFrom(_ post: Post){
        model.removePost(post)
    }
    func isFavorite(_ post: Post) {
        // set favorite
        model.toggleFavorite(post)
        
    }
}


