//
//  ContentView.swift
//  SolarGram
//
//  Created by Edward Fu on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = SolarGramPostsViewModel()
    @State private var selection: Tab = .photos

    
    enum Tab {
           case photos
           case profile
       }
    
    var body: some View {
        NavigationView{
            
            VStack{
                

                

                
                TabView(selection: $selection) {
                    PhotoList()
                        .environmentObject(viewModel)
                        .tabItem {
                            Label("Photos", systemImage: "photo.stack")
                        }
                        .tag(Tab.photos)
                    ProfileView()
                        .environmentObject(viewModel)
                        .tabItem {
                            Label("Profile", systemImage: "person.crop.circle")
                        }
                        .tag(Tab.profile)
                    
                    
                    
                }
            }
        }
    
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(SolarGramPostsViewModel())
    }
}
