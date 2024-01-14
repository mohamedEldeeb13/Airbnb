//
//  AirbnbDetailsView.swift
//  Airbnb
//
//  Created by Mohamed Abd Elhakam on 14/01/2024.
//

import SwiftUI

struct AirbnbDetailsView: View {
    var model : AirbnbListing
    var body: some View {
        VStack(alignment: .leading){
            GeometryReader{ geometry in
                ScrollView(.vertical) {
                    //Picture
                    AsyncImage(url: URL(string: model.xl_picture_url ?? ""))
                        .scaledToFill()
                        .frame(width: geometry.frame(in: .global).width, height: geometry.frame(in: .global).width)
                        .clipped()
                    
                    
                    //info
                    
                    Text(model.name ?? "")
                        .bold()
                        .padding()
                    if let price = model.price {
                        Text("Nighty price : \(price.formatted(.currency(code: "USD")))")
                    }
                    Text("Description: \(model.description ?? "")")
                        .padding()
                    Text("Sunnary: \(model.summary ?? "")")
                        .padding()
                    Text("House Rules: \(model.house_rules ?? "")")
                        .padding()
                    Text("Space: \(model.space ?? "")")
                        .padding()
                    
                    
                    // host info
                    
                    Text("About your host")
                        .font(.title2)
                        .bold()
                    
                    HStack
                    {
                        AsyncImage(url: URL(string: model.host_thumbnail_url ))
                            .scaledToFill()
                            .frame(width: 75, height: 75)
                            .clipShape(Circle())
                        
                        Text(model.host_name)
                            .bold()
                    }
                    .padding()
                    Text("Hosting since: "+model.host_since)
                    
                }//:ScrollView
                .frame(width: geometry.frame(in: .local).width)
            }//: geometryReader
            
        }//:Vsatck
        .navigationTitle(model.name ?? "Listing")
    }
}

