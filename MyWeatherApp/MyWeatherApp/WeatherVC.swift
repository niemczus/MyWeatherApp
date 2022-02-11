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

    override func viewDidLoad() {
        super.viewDidLoad()
        chooseCityButton.layer.cornerRadius = chooseCityButton.frame.height / 2
    }
}
