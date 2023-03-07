//
//  Post.swift
//  SolarGram
//
//  Created by Edward Fu on 3/1/23.
//

import SwiftUI

struct Post: View {
    @EnvironmentObject var viewModel: SolarGramViewModel
    
    //call profilelist
    var body: some View {
        profileList
    }
    
    //profile list will call each user and run everything in photosview
    var profileList: some View {
        List{
            ForEach(viewModel.solarGramFeed) {profile in
                PhotosView(profile: profile)
                    .listRowInsets(EdgeInsets())//expand list all the way
            }
            
        }
        .listStyle(PlainListStyle()) //ignore list constrains on the side
    }
}



struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}


