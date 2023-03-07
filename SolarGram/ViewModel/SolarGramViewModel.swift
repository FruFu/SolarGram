//
//  SolarGramViewModel.swift
//  SolarGram
//
//  Created by Edward Fu on 3/7/23.
//

import SwiftUI

class SolarGramViewModel: ObservableObject {
    @Published var isLiked = false
    @Published private var model: SolarGramManager = SolarGramManager()
    @Published private var heart: HeartButton = SolarGramManager()
    var solarGramFeed: [Profile]{
        model.user
    }
    
    
}

struct HearButtonState{
    model.
}
