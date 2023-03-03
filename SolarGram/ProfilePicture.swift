//
//  ProfilePicture.swift
//  SolarGram
//
//  Created by Edward Fu on 3/1/23.
//

import SwiftUI

struct ProfilePicture: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
        
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture(image: Image("John_profile"))
    }
}
