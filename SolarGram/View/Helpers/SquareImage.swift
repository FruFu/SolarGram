//
//  SquareImage.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI

struct SquareImage: View {
    
    var image: Image
    
    init(_ image: Image) {
        self.image = image
    }
    
    var body: some View {
        Rectangle()
            .aspectRatio(1, contentMode: .fit)
            .overlay {
                image
                    .resizable()
                    .scaledToFill()
            }
            .clipped()
            .contentShape(Rectangle())
        
        // MARK: other approach with ZStack shown for demonstration
        //        ZStack {
        //            Rectangle()
        //                .aspectRatio(1, contentMode: .fit)
        //
        //            image
        //                .resizable()
        //                .scaledToFill()
        //                .layoutPriority(-1)
        //        }
        //        .clipped()
    }
}

struct SquareImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareImage(Image("edward"))
    }
}
