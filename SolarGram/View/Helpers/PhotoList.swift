//
//  PhotoList.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI

struct PhotoList: View {
    @EnvironmentObject var viewModel: SolarGramPostsViewModel
    @State private var showImagePicker = false
    @State private var showCameraPicker = false
//    @State var feed: [Post] = $viewModel.PublicPosts.sampleData
    
    var body: some View {
        VStack{
        List(viewModel.SolarGramPosts.reversed()) { post in
            PhotoRow(post: post)
                .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        }
        .listStyle(.plain)
            ZStack{
                Rectangle()
                           .fill(Color.gray.opacity(0.5))
                           .frame(height: 50)
                        
                HStack{
                    Button {
                        self.showCameraPicker = true
                    } label: {
                        Image(systemName: "camera")
                            .font(.system(size: 30))
                    }
                    
                    .sheet(isPresented: $showCameraPicker) {
                        CameraPicker(viewModel: viewModel)
                    }
                    Button {
                        self.showImagePicker = true
                    } label: {
                        Image(systemName: "photo")
                            .font(.system(size: 30))
                    }
                    .sheet(isPresented: $showImagePicker) {
                        ImagePicker(viewModel: viewModel)
                    }
                }
                
            }
            
        }
    }
}

struct PhotoList_Previews: PreviewProvider {
    static var previews: some View {
        PhotoList().environmentObject(SolarGramPostsViewModel())
    }
}
