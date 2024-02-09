//
//  DestinationSearchView.swift
//  HotelBooking
//
//  Created by Prashantdan on 09/02/24.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State var destination: String = " "
    var body: some View {
        VStack {
            Button {
                withAnimation(.easeIn){
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .foregroundColor(.black)
                    .imageScale(.large)
            }
            VStack (alignment: .leading, content: {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                HStack{
                    Image(systemName: "magnifyingglass")
                        .imageScale(.large)
                    TextField("Search Destination", text: $destination)
                }
                .frame(height: 50)
                .padding(.horizontal)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1.0)
                        .foregroundStyle(Color(.systemGray4))
                }
            })
                .padding()
                .background(.white)
                .clipShape(Rectangle())
                .cornerRadius(12.0)
                .padding()
                .shadow(radius: 1.0)
            
            // Add Dates
            CollapsedPickerView(title: "When", description: "Add Date")
            
            // Number of Guest View
            CollapsedPickerView(title: "Who", description: "Add Guest")
        }
    }
}

struct DestinationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationSearchView(show: .constant(true))
    }
}
