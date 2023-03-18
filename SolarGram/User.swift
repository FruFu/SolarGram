//
//  User.swift
//  SolarGram
//
//  Created by Edward Fu on 3/17/23.
//

import SwiftUI

struct User: Identifiable {
    let id: UUID = UUID()
    let name: String
    let photoID: String
}
