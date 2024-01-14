//
//  AirbnbListingViewViewModel.swift
//  Airbnb
//
//  Created by Mohamed Abd Elhakam on 14/01/2024.
//

import Foundation
import SwiftUI

final class AirbnbListingViewViewModel : ObservableObject {
    private let service = ApiService()
    @Published var DataArray : [AirbnbListing] = []
    
    public func fetchListening(){
        service.fetchData { [weak self] result in
            switch result {
            case.success(let models):
                
                DispatchQueue.main.async {
                    self?.DataArray = models
                }
                
            case.failure:
                break
            }
        }
    }
    
    
}
