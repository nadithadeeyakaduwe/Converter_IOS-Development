//
//  SpeedViewController.swift
//  Converter
//
//  Created by Naditha Deeyakaduwe on 8/13/18.
//  Copyright © 2018 Naditha Deeyakaduwe. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    @IBOutlet weak var fpsTextBox: UITextField!
    @IBOutlet weak var mpsTextbox: UITextField!
    @IBOutlet weak var kmphTextbox: UITextField!
    
    let speedService = SpeedService()
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func fpsKeyPress(_ sender: UITextField) {
        if fpsTextBox.text != "" {
            mpsTextbox.text = speedService.feetPS_to_meterPH(fps: fpsTextBox.text!)
            kmphTextbox.text = speedService.fps_to_kmh(fps: fpsTextBox.text!)
        } else {
            mpsTextbox.text = ""
            kmphTextbox.text = ""
        }
    }
    
    @IBAction func mpsKeyPress(_ sender: UITextField) {
        if mpsTextbox.text != "" {
            fpsTextBox.text = speedService.mps_to_fps(mps: mpsTextbox.text!)
            kmphTextbox.text = speedService.mps_to_kmh(mps: mpsTextbox.text!)
        } else {
            fpsTextBox.text = ""
            kmphTextbox.text = ""
        }
    }
    

    @IBAction func kmphKeyPress(_ sender: UITextField) {
        if kmphTextbox.text != "" {
            fpsTextBox.text = speedService.kmh_to_fps(kmh: kmphTextbox.text!)
            mpsTextbox.text = speedService.kmh_to_meterPH(kmh: kmphTextbox.text!)
        } else {
            fpsTextBox.text = ""
            kmphTextbox.text = ""
        }
    }
    @IBAction func fpsOutFocus(_ sender: UITextField) {
        fpsTextBox.text = ""
        kmphTextbox.text = ""
        mpsTextbox.text = ""
    }
    @IBAction func mpsOutFocus(_ sender: UITextField) {
        fpsTextBox.text = ""
        kmphTextbox.text = ""
        mpsTextbox.text = ""
    }
    @IBAction func kmphOutFocus(_ sender: Any) {
        fpsTextBox.text = ""
        kmphTextbox.text = ""
        mpsTextbox.text = ""
    }
}
