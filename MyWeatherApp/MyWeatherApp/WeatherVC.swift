//
//  WeatherVCViewController.swift
//  MyWeatherApp
//
//  Created by Kamil Niemczyk on 11/02/2022.
//

import UIKit

class WeatherVC: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temeperatureLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var chooseCityButton: UIButton!
    
    var weatherReport: WeatherReport!

    override func viewDidLoad() {
        super.viewDidLoad()
        chooseCityButton.layer.cornerRadius = chooseCityButton.frame.height / 2
        
        guard let weatherReport = weatherReport else { return }
        
        cityLabel.text = weatherReport.city
        temeperatureLabel.text = weatherReport.temperatureInCelsius
        descriptionLabel.text = weatherReport.conditions.first?.description
        weatherImageView.image = weatherReport.conditionImage
    }
}
