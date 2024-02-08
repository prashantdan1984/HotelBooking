//
//  MapView.swift
//  HotelBooking
//
//  Created by Prashantdan on 08/02/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinates: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    private func setRegion(_ coordinate:CLLocationCoordinate2D){
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    }
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinates)
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: CLLocationCoordinate2D(latitude: 21.8380, longitude: 73.7191))
    }
}
