//
//  PhotosView.swift
//  SolarGram
//
//  Created by Edward Fu on 3/1/23.
//

import SwiftUI



struct PhotosView: View {
    @State private var isLiked = false
    
    var profile: Profile
    
    var body: some View {
        VStack {
            HStack{
                ProfilePicture(image: Image("\(profile.name)_profile"))
                    .frame(width: 50, height: 50)
                    .padding(.top)
                    
                    
                Text("\(profile.name)")
                    
                Spacer()
            }.font(.title2)
                
            Image("\(profile.name)_\(profile.id)")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .aspectRatio(1, contentMode: .fill)
                .clipped()
                
                
            Text("\(profile.text)")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            HeartButton(isLiked: $isLiked)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.bottom)
            
        
            
        }
    }
}

struct HeartButton:View{
    @Binding var isLiked:Bool
    var body: some View{
        Button(action:{
            self.isLiked.toggle()
        }, label:{
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
