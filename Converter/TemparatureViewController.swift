//
//  TemparatureViewController.swift
//  Converter
//
//  Created by Naditha Deeyakaduwe on 8/13/18.
//  Copyright © 2018 Naditha Deeyakaduwe. All rights reserved.
//

import UIKit

class TemparatureViewController: UIViewController {

    @IBOutlet weak var celciusTextbox: UITextField!
    @IBOutlet weak var farenheitTextbox: UITextField!
    @IBOutlet weak var kelvinTextbox: UITextField!
    
    var tempratureService = TempratureService()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func celciousKeyPress(_ sender: UITextField) {
        if celciusTextbox.text != "" {
            farenheitTextbox.text = tempratureService.celcius_to_farenheit(clecious: celciusTextbox.text!)
            kelvinTextbox.text = tempratureService.clecius_to_kelvin(celcious: celciusTextbox.text!)
        } else {
            farenheitTextbox.text = ""
            kelvinTextbox.text = ""
        }
    }
    
    @IBAction func farenheitKeyPress(_ sender: UITextField) {
        if farenheitTextbox.text != "" {
            celciusTextbox.text = tempratureService.farenheit_to_celcius(fahrenheit: farenheitTextbox.text!)
            kelvinTextbox.text = tempratureService.ferenheit_to_kelvin(ferenheit: farenheitTextbox.text!)
        } else {
            celciusTextbox.text = ""
            kelvinTextbox.text = ""
        }
    }
    @IBAction func kelvinKeyPress(_ sender: UITextField) {
        if kelvinTextbox.text != "" {
            celciusTextbox.text = tempratureService.kelvin_to_celcious(kelvin: kelvinTextbox.text!)
            farenheitTextbox.text = tempratureService.kelvin_to_farenheit(kelvin: kelvinTextbox.text!)
        } else {
            celciusTextbox.text = ""
            farenheitTextbox.text = ""
        }
    }
    
    @IBAction func cleciousOutFocus(_ sender: UITextField) {
        celciusTextbox.text = ""
        farenheitTextbox.text = ""
        kelvinTextbox.text = ""
    }
    
    @IBAction func farenheitOutFocus(_ sender: UITextField) {
        celciusTextbox.text = ""
        farenheitTextbox.text = ""
        kelvinTextbox.text = ""
    }
    @IBAction func kelvinOutFocus(_ sender: UITextField) {
        celciusTextbox.text = ""
        farenheitTextbox.text = ""
        kelvinTextbox.text = ""
    }
}
