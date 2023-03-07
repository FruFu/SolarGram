//
//  PhotosView.swift
//  SolarGram
//
//  Created by Edward Fu on 3/1/23.
//

import SwiftUI



struct PhotosView: View {
    //make heart as false for default
    @State private var isLiked = false
    @EnvironmentObject var viewModel: SolarGramViewModel
    var profile: Profile
    
    var body: some View {
        //create a vstack to display everything within a post
        VStack {
            HStack{
                //call profilepicture with each image
                ProfilePicture(image: Image("\(profile.name)_profile"))
                    .frame(width: 50, height: 50)
                    .padding(.top)
                    
                //write out the name
                Text("\(profile.name)")
                
                // spacer so everything is one the left
                Spacer()
            }.font(.title2)
                
            //call the image and make it in to a square
            Rectangle()
                .aspectRatio(1, contentMode: .fill)
                .scaledToFit()
                .overlay(
                    Image("\(profile.name)_\(profile.id)")
                        .resizable()
                        .scaledToFill()
                        
                )
                .clipped()
                
            
                
            //create the text for the image
            Text("\(profile.text)")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            //add the heart button
            viewModel.HeartButton(isLiked: $isLiked)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.bottom)
            
        
            
        }
    }
}


struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        let test = Profile(id: 1, name: "Edward", text:"testing")
        PhotosView(profile:test)
    }
}
