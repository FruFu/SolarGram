//
//  ProfileView.swift
//  SolarGram
//
//  Created by Edward Fu on 3/1/23.
//

import SwiftUI

struct ProfileView: View {

    var userPost = Post().user
    
    
    //let screenSize: CGRect = UIScreen.main.bounds
    //make it into 3 column
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        VStack{
            //call profile picture
            ProfilePicture(image: Image("Edward_profile"))
                .frame(width: 150, height: 150)
            Text("Edward").font(.title)
            //make sure the image are scroll view
            ScrollView {
                //call lazygrid and make spacing between each column to 5
                LazyVGrid(columns: columns, spacing: 5) {
                    ForEach(userPost) {profile in
                        //display image only when the profile.name is Edward
                        if profile.name == "Edward"{
                            GeometryReader { gr in
                            //display all the images under profile.name Edward
                                Image("\(profile.name)_\(profile.id)")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .aspectRatio(1, contentMode: .fill)
                                    .clipped()
                                    
                                
                            }
                        }


                    }.clipped()
                    .aspectRatio(1, contentMode: .fit)

//                    Photos(image: Image("John_2"))
//                        .frame(width: screenSize.width/3, height: screenSize.width/3)
//
//                    Photos(image: Image("John_2"))
//                        .frame(width: screenSize.width/3, height: screenSize.width/3)
//                    Photos(image: Image("John_2"))
//                        .frame(width: screenSize.width/3, height: screenSize.width/3)

                }.padding(.horizontal)
            }
        }
        
    }
}
                    


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
