//
//  WeightViewController.swift
//  Converter
//
//  Created by Naditha Deeyakaduwe on 8/13/18.
//  Copyright © 2018 Naditha Deeyakaduwe. All rights reserved.
//

import UIKit


class WeightViewController: UIViewController {

    @IBOutlet weak var gramTextBox: UITextField!
    @IBOutlet weak var kilogramsTextBox: UITextField!
    @IBOutlet weak var poundsTextBox: UITextField!
    @IBOutlet weak var ounceTextBox: UITextField!
    
    var gramValue: Double = 0.0
    var kilogramValue: Double = 0.0
    var poundValue: Double = 0.0
    var ounceValue: Double = 0.0
    
    let wService = WeightService()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gramKeyPress(_ sender: UITextField) {
        if gramTextBox.text != "" {
            kilogramsTextBox.text = wService.grams_to_kilo(gram: gramTextBox.text!)
            poundsTextBox.text = wService.grams_to_pounce(gram: gramTextBox.text!)
            ounceTextBox.text = wService.grams_to_ounce(gram: gramTextBox.text!)
        } else {
            kilogramsTextBox.text = ""
            ounceTextBox.text = ""
            poundsTextBox.text = ""
        }
    }
    
    @IBAction func kiloKeyPress(_ sender: UITextField) {
        if kilogramsTextBox.text != "" {
            gramTextBox.text = wService.kilo_to_grams(kilo: kilogramsTextBox.text!)
            poundsTextBox.text = wService.kilo_to_pounce(kilo: kilogramsTextBox.text!)
            ounceTextBox.text = wService.kilo_to_ounce(kilo: kilogramsTextBox.text!)
        } else {
            gramTextBox.text = ""
            ounceTextBox.text = ""
            poundsTextBox.text = "" 
        }
    }
    
    @IBAction func poundKeyPress(_ sender: UITextField) {
        if poundsTextBox.text != "" {
            gramTextBox.text = wService.pounce_to_grams(pounce: poundsTextBox.text!)
            kilogramsTextBox.text = wService.pounce_to_kilo(pounce: poundsTextBox.text!)
            ounceTextBox.text = wService.pounce_to_ounce(pounce: poundsTextBox.text!)
        } else {
            gramTextBox.text = ""
            ounceTextBox.text = ""
            kilogramsTextBox.text = ""
        }
    }
    
    @IBAction func ounceKeyPress(_ sender: UITextField) {
        if ounceTextBox.text != "" {
            gramTextBox.text = wService.ounce_to_grams(ounce: ounceTextBox.text!)
            kilogramsTextBox.text = wService.ounce_to_kilo(ounce: ounceTextBox.text!)
            poundsTextBox.text = wService.ounce_to_pounce(ounce: ounceTextBox.text!)
        } else {
            gramTextBox.text = ""
            poundsTextBox.text = ""
            kilogramsTextBox.text = ""
        }
    }
    
    
    @IBAction func gramTextBoxOutfocus(_ sender: Any) {
        kilogramsTextBox.text = ""
        gramTextBox.text = ""
        ounceTextBox.text = ""
        poundsTextBox.text = ""
    }
    @IBAction func kiloTextBoxOutfocus(_ sender: UITextField) {
        kilogramsTextBox.text = ""
        gramTextBox.text = ""
        ounceTextBox.text = ""
        poundsTextBox.text = ""
    }
    @IBAction func poundTextboxOutfocus(_ sender: UITextField) {
        kilogramsTextBox.text = ""
        gramTextBox.text = ""
        ounceTextBox.text = ""
        poundsTextBox.text = ""
    }
    @IBAction func ounceTextboxOutfocus(_ sender: UITextField) {
        kilogramsTextBox.text = ""
        gramTextBox.text = ""
        ounceTextBox.text = ""
        poundsTextBox.text = ""
    }
}
