//
//  WeatherReport.swift
//  MyWeatherApp
//
//  Created by Kamil Niemczyk on 12/02/2022.
//

import Foundation

struct WeatherReport: Codable {
    let city: String
    let breakdown: WeatherBreakdown
    let conditions: [WeatherConditions]
    
    private enum CodingKeys: String, CodingKey {
        case city = "name"
        case breakdown = "main"
        case conditions = "weather"
    }
}

struct WeatherBreakdown: Codable {
    let temperature: Double
    
    private enum CodingKeys: String, CodingKey {
        case temperature = "temp"
    }
}

struct WeatherConditions: Codable {
    let id: Int
    let description: String
}
