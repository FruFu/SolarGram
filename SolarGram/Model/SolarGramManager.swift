//
//  SolarGramManager.swift
//  SolarGram
//
//  Created by Edward Fu on 3/7/23.
//
import Foundation
import SwiftUI

struct SolarGramManager{
    
    
    //declare structures
    var user: [Profile] = [Profile(id: 1, name: "Edward", text:"testing", isFavorite: false),
                           Profile(id: 2, name: "John", text:"testing", isFavorite: false),
                           Profile(id: 3, name: "Edward", text:"testing", isFavorite: false),
                           Profile(id: 4, name: "Edward", text:"testing", isFavorite: false),
                           Profile(id: 5, name: "John", text:"testing", isFavorite: false),
                           Profile(id: 6, name: "John", text:"testing", isFavorite: false),
                           Profile(id: 7, name: "Edward", text:"testing", isFavorite: false),
                           Profile(id: 8, name: "Edward", text:"testing", isFavorite: false),
                           Profile(id: 9, name: "Edward", text:"testing", isFavorite: false)]
    
    
}

struct Profile: Identifiable {
    var id: Int
    var name: String
    var text: String
    var isFavorite: Bool
}

//create heart button strucutre
struct HeartButton{
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


