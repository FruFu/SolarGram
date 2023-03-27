//
//  PublicPosts.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI

struct PublicPosts {
    
    static let currentUser: User = User(name: "Edward", photoID: "edward")
    
    mutating func add(_ post: Post, image: UIImage?) {
        // create a new post object with the provided image
        let newPost = Post(description: post.description, isFavorite: post.isFavorite, author: post.author, image: image)
        // append the new post to the array
        sampleData.append(newPost)
    }

    var sampleData: [Post] = [    Post( description: "Something really great", author: PublicPosts.currentUser, image: UIImage(named: "photo1")),
        Post(description: "Something really great", author: User(name: "Chris", photoID: "chris"), image: UIImage(named: "photo2")),
        Post(description: "Something really great", author: User(name: "John", photoID: "john"), image: UIImage(named: "photo3")),
        Post( description: "Something really great", author: User(name: "Chris", photoID: "chris"), image: UIImage(named: "photo4")),
        Post(description: "Something really great", author: PublicPosts.currentUser, image: UIImage(named: "photo5")),
        Post(description: "Something really great", author: PublicPosts.currentUser, image: UIImage(named: "photo6")),
        Post(description: "Something really great", author: PublicPosts.currentUser, image: UIImage(named: "photo7")),
        Post(description: "Something really great", author: PublicPosts.currentUser, image: UIImage(named: "photo8")),
        Post(description: "Something really great", author: User(name: "John", photoID: "john"), image: UIImage(named: "photo9"))
    ]

    
    mutating func toggleFavorite(_ post: Post) {
        let postIndex = sampleData.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        sampleData[actualIndex].isFavorite.toggle()
        print(sampleData[actualIndex].author)
        print(sampleData[actualIndex].image)
    }
    
    mutating func removePost(_ post: Post){
        let postIndex = sampleData.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        print(actualIndex)
        sampleData.remove(at: actualIndex)
    }
}
