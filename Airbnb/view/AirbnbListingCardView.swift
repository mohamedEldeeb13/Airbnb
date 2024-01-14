//
//  AirbnbListingCardView.swift
//  Airbnb
//
//  Created by Mohamed Abd Elhakam on 14/01/2024.
//

import SwiftUI

struct AirbnbListingCardView: View {
    let model : AirbnbListing
    var body: some View {
        HStack
        {
            AsyncImage(url: URL(string: model.thumbnail_url ?? ""))
                .scaledToFill()
                .frame(width: 100, height: 100, alignment: .center)
                .clipped()
            
            VStack
            {
                Text(model.name ?? "listen")
                    .font(.title3)
                    .lineLimit(1)
                    .bold()
                Text(model.description ?? "listen")
                    .foregroundStyle(Color(.secondaryLabel))
                    .font(.body)
                    .lineLimit(3)
                    
            }
        }
    }
}

//#Preview {
//    AirbnbListingCardView()
//}
