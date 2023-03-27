//
//  Post.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI



struct Post: Identifiable {
    let id: UUID = UUID()
    let description: String
    var isFavorite: Bool = false
    let author: User
    let image: UIImage?
}
