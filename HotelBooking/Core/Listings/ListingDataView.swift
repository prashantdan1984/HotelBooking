//
//  ListingDataView.swift
//  HotelBooking
//
//  Created by Prashantdan on 07/02/24.
//

import SwiftUI
import MapKit

struct ListingDataView: View {
    
    var body: some View {
        ScrollView {
            ZStack (alignment: .topLeading, content: {
                ListingImageCarouseView()
                    .frame(height: 400)
                
                Button {
                    //click event
                    print("Button Tap")
                    //dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 40, height: 40)
                        }
                }.padding(32)
            })
            
            // Hotel About Info
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading, spacing: 8, content: {
                    HStack(spacing: 2, content: {
                        Image(systemName: "star.fill")
                        
                        Text("4.86")
                        Text("-")
                        Text("39 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    })
                        .foregroundStyle(.black)
                    Text("Miami, Florida")
                })
                    .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //Host Info view
            HStack{
                VStack(alignment: .leading, spacing: 8, content: {
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                    
                    HStack(spacing: 2.0, content: {
                        Text("4 guests - ")
                        Text("4 badrooms - ")
                        Text("4 beds - ")
                        Text("3 baths")
                        
                    })
                        .font(.caption)
                })
                
                Spacer()
                
                Image("user")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            //Listing Fetures View
            VStack(alignment: .leading, spacing: 16.0, content: {
                ForEach(0 ..< 2) { feature in
                    HStack(spacing: 12, content: {
                       // Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        
                        VStack(alignment: .leading, content: {
                            Text("Superhero")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhero are experience, highly rated hosts who are commited to providing great stars for guest")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        })
                        Spacer()
                    })
                }
            })
            .padding()
            
            Divider()
            
            //Badroom View
            VStack(alignment: .leading, spacing: 16, content: {
                Text("Where you will sleep")
                    .font(.headline)
                ScrollView (.horizontal, showsIndicators: false){
                    HStack(spacing: 16, content: {
                        ForEach(1 ..< 5) { bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedroom\(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12.0)
                                    .stroke(lineWidth: 1.0)
                                    .foregroundStyle(.gray)
                            }
                        }
                    })
                }
                
            })
                .padding()
            
            Divider()
            
            //Map View
            VStack (alignment: .leading, spacing: 14.0, content: {
                Text("Where you will be")
                    .font(.headline)
                
                MapView(coordinates: CLLocationCoordinate2D(latitude: 21.8380, longitude: 73.7191)).frame(height:300)
                    .cornerRadius(12)
            })
                .padding()
        }
        .overlay(alignment: .bottom) {
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before texes")
                            .font(.footnote)
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button {
                        print("Button Tap")
                    } label: {
                        Text("Reserve")
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .clipShape(Rectangle())
                            .cornerRadius(12)
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ListingDataView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDataView()
    }
}
