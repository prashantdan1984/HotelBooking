//
//  ListingImageCarouseView.swift
//  HotelBooking
//
//  Created by Prashantdan on 07/02/24.
//

import SwiftUI

struct ListingImageCarouseView: View {
    
    var images = ["Image", "Image1","Image2","Image3"]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(.page)
    }
}

struct ListingImageCarouseView_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageCarouseView()
    }
}
