//
//  CollapsedPickerView.swift
//  HotelBooking
//
//  Created by Prashantdan on 09/02/24.
//

import SwiftUI

struct CollapsedPickerView: View {
    var title: String
    var description: String
    var body: some View {
        VStack {
            HStack{
                Text("\(title)")
                    .foregroundStyle(.gray)
                    
                Spacer()
                
                Text("\(description)")
            }
            .font(.subheadline)
            
        }.padding()
            .background(.white)
            .clipShape(Rectangle())
            .cornerRadius(12.0)
            .padding()
            .shadow(radius: 1.0)
    }
}

struct CollapsedPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CollapsedPickerView(title: "Who", description: "Add date")
    }
}
