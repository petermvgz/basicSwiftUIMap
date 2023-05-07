//
//  Location.swift
//  basicSwiftUIMap
//
//  Created by Peter Deyi on 5/6/23.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    let imageName: String
    
    //create a computed property
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
