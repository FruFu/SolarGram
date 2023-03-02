//
//  PhotosView.swift
//  SolarGram
//
//  Created by Edward Fu on 3/1/23.
//

import SwiftUI



struct PhotosView: View {

    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    Post()
                    Post()
                    Post()
                }
            }
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
