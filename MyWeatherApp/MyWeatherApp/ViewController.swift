//
//  ViewController.swift
//  MyWeatherApp
//
//  Created by Kamil Niemczyk on 11/02/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityTextField.layer.cornerRadius = cityTextField.frame.height / 3
        goButton.layer.cornerRadius = goButton.frame.height / 2
       
    }
    
    // API: 6000070f37a1ebed7b7a5115537ed4b5
//http://api.openweathermap.org/data/2.5/weather?q=jaworze&appid=6000070f37a1ebed7b7a5115537ed4b5&units=metric&lang=pl

    @IBAction func didTapGo() {
        
        guard cityTextField.text?.isEmpty == false else { return }
        
        var components = URLComponents(string: "http://api.openweathermap.org/data/2.5/weather?")
        let appIdQuerry = URLQueryItem(name: "appid", value: "6000070f37a1ebed7b7a5115537ed4b5")
        let cityQuerry = URLQueryItem(name: "q", value: cityTextField.text)
        let unitsQuerry = URLQueryItem(name: "units", value: "metric")
        let languageQuerry = URLQueryItem(name: "lang", value: "pl")
        components?.queryItems = [appIdQuerry, cityQuerry, unitsQuerry, languageQuerry]
        
        guard let url = components?.url else { return }
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url) { data, _, error in
            
            if let error = error {
                print(error)
            } else if let data = data {
                
                do {
//                    let json = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(json)
//                    print(components?.url)
                    
                    let weatherReport = try JSONDecoder().decode(WeatherReport.self, from: data)
                    print(weatherReport)
                    
                    
                } catch {
                    print(error)
                }
            }
        }
        
        dataTask.resume()
        
        performSegue(withIdentifier: "segue.Main.enterCityToWeather", sender: nil)
    }
    
    @IBAction func returnToMainVC(_ sender: UIStoryboardSegue) {}

}

