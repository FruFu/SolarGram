//
//  Post.swift
//  SolarGram
//
//  Created by Edward Fu on 3/1/23.
//

import SwiftUI

struct Post: View {
    var body: some View {
        VStack {
            HStack{
                ProfilePicture(image: Image("ProfileImage1"))
                    .frame(width: 50, height: 50)
                    
                    
                Text("demo")
                    
                Spacer()
            }.font(.title2)
                .padding([.leading],10)
            Photos(image: Image("image1"))
            Text("some text here")
                .frame(maxWidth: .infinity, alignment: .leading)
                .border(.brown)
                .padding([.leading,.trailing],10)
            
            
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}
