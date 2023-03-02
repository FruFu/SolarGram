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
            PhotosView()
                .frame(width: 400)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
