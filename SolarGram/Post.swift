//
//  Post.swift
//  SolarGram
//
//  Created by Edward Fu on 3/1/23.
//

import SwiftUI

struct Post: View {
    //declare structures
    var user: [Profile] = [Profile(id: 1, name: "Edward", text:"testing"),
                           Profile(id: 2, name: "John", text:"testing"),
                           Profile(id: 3, name: "Edward", text:"testing"),
                           Profile(id: 4, name: "Edward", text:"testing"),
                           Profile(id: 5, name: "John", text:"testing"),
                           Profile(id: 6, name: "John", text:"testing"),
                           Profile(id: 7, name: "Edward", text:"testing"),
                           Profile(id: 8, name: "Edward", text:"testing"),
                           Profile(id: 9, name: "Edward", text:"testing")]
    
    //call profilelist
    var body: some View {
        profileList
    }
    
    //profile list will call each user and run everything in photosview
    var profileList: some View {
        List{
            ForEach(user) {profile in
                PhotosView(profile: profile)
                    .listRowInsets(EdgeInsets())//expand list all the way
            }
            
        }
        .listStyle(PlainListStyle()) //ignore list constrains on the side
    }
}

struct Profile: Identifiable {
    var id: Int
    var name: String
    var text: String
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}


