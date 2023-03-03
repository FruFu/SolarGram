//
//  ContentView.swift
//  SolarGram
//
//  Created by Edward Fu on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Post()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Photos")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
