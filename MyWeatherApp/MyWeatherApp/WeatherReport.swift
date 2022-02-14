//
//  WeatherReport.swift
//  MyWeatherApp
//
//  Created by Kamil Niemczyk on 12/02/2022.
//

import Foundation
import UIKit

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

extension WeatherReport {
    var temperatureInCelsius: String {
        let formatedNumber = String(format: "%.1F", breakdown.temperature)
        let temperatureInCelsius = "\(formatedNumber)°C"
        return temperatureInCelsius
    }
    var conditionImage: UIImage {
        guard let mainCondition = conditions.first else { return UIImage() }
        
        switch mainCondition.id {
        case 200...299: return UIImage(named: "thunder") ?? UIImage()
        case 300...399: return UIImage(named: "drizzle") ?? UIImage()
        case 500...599: return UIImage(named: "rain") ?? UIImage()
        case 600...699: return UIImage(named: "snow") ?? UIImage()
        case 700...799: return UIImage(named: "atmosphere") ?? UIImage()
        case 800      : return UIImage(named: "sunny") ?? UIImage()
        case 801...899: return UIImage(named: "cloudy") ?? UIImage()
        default: return UIImage()
        }
    }
}


