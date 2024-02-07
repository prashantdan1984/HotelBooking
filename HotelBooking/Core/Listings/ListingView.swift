//
//  ListingView.swift
//  HotelBooking
//
//  Created by Prashantdan on 06/02/24.
//

import SwiftUI

struct ListingView: View {
    var images = ["Image", "Image1","Image2","Image3"]
    var body: some View {
        VStack(spacing: 0, content:{
            ListingImageCarouseView()
                .frame(height: 300)
                .cornerRadius(20.0)
//            TabView {
//                ForEach(images, id: \.self) { image in
////                    Rectangle()
//                    Image(image)
//                        .resizable()
//                        .scaledToFit()
//                }
//            }
//            .frame(height: 320)
//            .cornerRadius(20)
//            .tabViewStyle(.page)
            
            //Listing Details
            HStack {
                VStack(alignment: .leading, content: {
                    
                    Text("Miami, Florida").fontWeight(.semibold)
                    Text("12 mi away").foregroundStyle(.gray)
                    Text("$567").fontWeight(.semibold)
                })
                Spacer()
                HStack (spacing: 2.0, content: {
                    Image(systemName: "star.fill")
                    Text("4.87")
                })
            }
            .padding(EdgeInsets(top: 0.0, leading: 20.0, bottom: 0.0, trailing: 20.0))
        } )
        
        

    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingView()
    }
}
