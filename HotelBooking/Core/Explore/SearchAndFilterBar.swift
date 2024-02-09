//
//  SearchAndFilterBar.swift
//  HotelBooking
//
//  Created by Prashantdan on 06/02/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 10.0, content: {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere - Any week - Any guest")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            })
            Spacer()
            Button {
                print("Button Tap")
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundColor(.black)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .shadow(color: .black.opacity(0.4), radius: 2)
                //.foregroundStyle(Color(UIColor()))
        }
        .padding()
    }
}

struct SearchAndFilterBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndFilterBar()
    }
}
