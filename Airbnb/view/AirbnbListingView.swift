//
//  AirbnbListingView.swift
//  Airbnb
//
//  Created by Mohamed Abd Elhakam on 14/01/2024.
//

import SwiftUI

struct AirbnbListingView: View {
    @StateObject var viewModel = AirbnbListingViewViewModel()
    var body: some View {
        NavigationView{
            if viewModel.DataArray.isEmpty {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }else {
                List(viewModel.DataArray) { item in
                    NavigationLink(destination: AirbnbDetailsView(model: item),
                        label: {
                            AirbnbListingCardView(model: item)
                        })
                    .navigationTitle("Airbnb")
                    
                }
            }
        }
        .onAppear(perform: {
            viewModel.fetchListening()
        })
    }
}

#Preview {
    AirbnbListingView()
}
