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

    @IBAction func didTapGo() {
        performSegue(withIdentifier: "segue.Main.enterCityToWeather", sender: nil)
    }
    
    @IBAction func returnToMainVC(_ sender: UIStoryboardSegue) {}

}

