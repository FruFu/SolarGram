//
//  PhotoList.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI

struct PhotoList: View {
    @EnvironmentObject var viewModel: SolarGramPostsViewModel
    
//    @State var feed: [Post] = $viewModel.PublicPosts.sampleData
    
    var body: some View {
        List(viewModel.SolarGramPosts.reversed()) { post in
            PhotoRow(post: post)
                .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        }
        .listStyle(.plain)
    }
}

struct PhotoList_Previews: PreviewProvider {
    static var previews: some View {
        PhotoList()
    }
}
