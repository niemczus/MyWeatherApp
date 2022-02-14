//
//  WeatherBreakdown.swift
//  MyWeatherApp
//
//  Created by Kamil Niemczyk on 12/02/2022.
//

import Foundation

struct WeatherBreakdown: Codable {
    let temperature: Double
    
    private enum CodingKeys: String, CodingKey {
        case temperature = "temp"
    }
}
