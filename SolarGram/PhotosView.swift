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
            Image("\(profile.name)_\(profile.id)")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .aspectRatio(1, contentMode: .fill)
                .clipped()
                
            //create the text for the image
            Text("\(profile.text)")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            //add the heart button
            HeartButton(isLiked: $isLiked)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.bottom)
            
        
            
        }
    }
}

//create heart button strucutre
struct HeartButton:View{
    @Binding var isLiked:Bool
    var body: some View{
        Button(action:{
            self.isLiked.toggle()
        }, label:{
            //if heart button boll isLiked is true display heart.fill otherwise display ehart
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .foregroundColor(.black)
                .frame(width: 20, height: 20)
            
        })
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        let test = Profile(id: 1, name: "Edward", text:"testing")
        PhotosView(profile:test)
    }
}
