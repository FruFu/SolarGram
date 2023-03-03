//
//  Photos.swift
//  SolarGram
//
//  Created by Edward Fu on 3/1/23.
//

import SwiftUI

struct Photos: View {
    let screenSize: CGRect = UIScreen.main.bounds
    
    var image: Image
    
    var body: some View {
        
//        image
//            .resizable()
//            .scaledToFill()
//            .frame(width: 400, height: 400)
        
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: screenSize.width, height: screenSize.width)
            .clipShape(Rectangle())
        
        
        
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos(image: Image("John_2"))
    }
}
