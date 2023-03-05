//
//  Photos.swift
//  SolarGram
//
//  Created by Edward Fu on 3/1/23.
//

import SwiftUI

struct Photos: View {
   
    var image: Image
    
    var body: some View {
        

        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Rectangle())
        
        
        
        
        
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos(image: Image("John_2"))
    }
}
