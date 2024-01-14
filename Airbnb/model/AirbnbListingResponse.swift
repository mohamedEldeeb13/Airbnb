//
//  AirbnbListingResponse.swift
//  Airbnb
//
//  Created by Mohamed Abd Elhakam on 14/01/2024.
//

import Foundation

struct AirbnbListingResponse : Codable {
    let total_count: Int
    let results: [AirbnbListing]
}
