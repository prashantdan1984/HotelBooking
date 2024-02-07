//
//  Explore.swift
//  HotelBooking
//
//  Created by Prashantdan on 06/02/24.
//

import SwiftUI

struct Explore: View {
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVStack (spacing: 32, content: {
                    ForEach(1...10, id: \.self) { listing in
                       // NavigationLink(ListingDataView){
                            ListingView()
                                .foregroundColor(.black)
                       // }
                    }
                }).padding()
            }
            
        }
    }
}

struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
    }
}