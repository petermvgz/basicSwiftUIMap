//
//  ApplicationData.swift
//  basicSwiftUIMap
//
//  Created by Peter Deyi on 5/6/23.
//

import Foundation
import MapKit
import SwiftUI

class ApplicationData: ObservableObject {
    // all loaded locations
    @Published var locations: [Location]
    
    init() {
        locations = [
            Location(name: "", latitude: 37.7210705, longitude: -122.4760580, imageName: "")
        ]
    }
    
}

