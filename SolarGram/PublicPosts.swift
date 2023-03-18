//
//  PublicPosts.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI

struct PublicPosts {
    
    static let currentUser: User = User(name: "Edward", photoID: "edward")
            
    static let sampleData: [Post] = [
        Post(photoID: "photo1", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "photo2", description: "Something really great", author: User(name: "Chris", photoID: "chris")),
        Post(photoID: "photo3", description: "Something really great", author: User(name: "John", photoID: "john")),
        Post(photoID: "photo4", description: "Something really great", author: User(name: "Chris", photoID: "chris")),
        Post(photoID: "photo5", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "photo6", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "photo7", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "photo8", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "photo8", description: "Something really great", author: User(name: "John", photoID: "john"))

    ]
}
