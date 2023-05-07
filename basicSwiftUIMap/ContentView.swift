//
//  ContentView.swift
//  basicSwiftUIMap
//
//  Created by Peter Deyi on 5/6/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    //we need to access application data
    @StateObject var appData = ApplicationData()
    
    //create a map region as a state variable
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.773972, longitude: -122.431297), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        ZStack {
            NavigationStack {
                Map(coordinateRegion: $mapRegion, annotationItems: appData.locations) {
                    location in
                    
                    //customize annotation
                    MapAnnotation(coordinate: location.coordinate) {
                        NavigationLink {
                            //destination view
                            Image(location.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 200, alignment: .center)
                            Text(location.name)
                        } label: {
                            //customized annotation marker
                            Image(systemName: "pin.circle.fill")
                                .font(.title2)
                                .foregroundColor(.red)
                            Text(location.name)
                                .font(.caption)
                                .bold()
                        
                        }
                    }
                }
                .ignoresSafeArea()
            }
        }
        
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
