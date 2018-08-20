//
//  DistanceViewController.swift
//  Converter
//
//  Created by Naditha Deeyakaduwe on 8/13/18.
//  Copyright © 2018 Naditha Deeyakaduwe. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    @IBOutlet weak var metersTextbox: UITextField!
    @IBOutlet weak var footTextbox: UITextField!
    @IBOutlet weak var yardsTextbox: UITextField!
    @IBOutlet weak var kmTextbox: UITextField!
    @IBOutlet weak var mileTextbox: UITextField!
    
    let distanceService = DistanceServices()
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func metersKeyPress(_ sender: UITextField) {
        if metersTextbox.text != "" {
            footTextbox.text = distanceService.meters_to_foots(meters: metersTextbox.text!)
            yardsTextbox.text = distanceService.meters_to_yards(meters: metersTextbox.text!)
            kmTextbox.text = distanceService.meters_to_km(meter: metersTextbox.text!)
            mileTextbox.text = distanceService.meters_to_miles(meter: metersTextbox.text!)
        } else {
            footTextbox.text = ""
            yardsTextbox.text = ""
            kmTextbox.text = ""
            mileTextbox.text = ""
        }
    }
    
   
    @IBAction func footKeyPress(_ sender: UITextField) {
        if footTextbox.text != "" {
            metersTextbox.text = distanceService.foot_to_meters(foots: footTextbox.text!)
            yardsTextbox.text = distanceService.foots_to_yards(foot: footTextbox.text!)
            kmTextbox.text = distanceService.foot_to_km(foot: footTextbox.text!)
            mileTextbox.text = distanceService.foot_to_miles(foot: footTextbox.text!)
        } else {
            metersTextbox.text = ""
            yardsTextbox.text = ""
            kmTextbox.text = ""
            mileTextbox.text = ""
        }
    }
    @IBAction func yardsKeyPress(_ sender: UITextField) {
        if yardsTextbox.text != "" {
            metersTextbox.text = distanceService.yards_to_meters(yard: yardsTextbox.text!)
            footTextbox.text = distanceService.yards_to_foots(yards: yardsTextbox.text!)
            kmTextbox.text = distanceService.yard_to_km(yard: yardsTextbox.text!)
            mileTextbox.text = distanceService.yard_to_miles(yard: yardsTextbox.text!)
        } else {
            metersTextbox.text = ""
            footTextbox.text = ""
            kmTextbox.text = ""
            mileTextbox.text = ""
        }
    }
    @IBAction func kmKeyPress(_ sender: UITextField) {
        if kmTextbox.text != "" {
            metersTextbox.text = distanceService.kiloMeters_to_meters(kilo: kmTextbox.text!)
            footTextbox.text = distanceService.kiloMeters_to_foots(kilometers: kmTextbox.text!)
            yardsTextbox.text = distanceService.kilometers_to_yards(km: kmTextbox.text!)
            mileTextbox.text = distanceService.kilometers_to_miles(km: kmTextbox.text!)
        } else {
            metersTextbox.text = ""
            footTextbox.text = ""
            yardsTextbox.text = ""
            mileTextbox.text = ""
        }
    }
    @IBAction func milesKeyPress(_ sender: UITextField) {
        if mileTextbox.text != "" {
            metersTextbox.text = distanceService.miles_to_meters(mile: mileTextbox.text!)
            footTextbox.text = distanceService.miles_to_foots(miles: mileTextbox.text!)
            yardsTextbox.text = distanceService.miles_to_yards(mile: mileTextbox.text!)
            kmTextbox.text = distanceService.miles_to_km(mile: mileTextbox.text!)
        } else {
            metersTextbox.text = ""
            footTextbox.text = ""
            yardsTextbox.text = ""
            kmTextbox.text = ""
        }
    }
    @IBAction func metersOutFocus(_ sender: UITextField) {
        footTextbox.text = ""
        metersTextbox.text = ""
        yardsTextbox.text = ""
        kmTextbox.text = ""
        mileTextbox.text = ""
    }
    @IBAction func footOutFocus(_ sender: Any) {
        metersTextbox.text = ""
        yardsTextbox.text = ""
        footTextbox.text = ""
        kmTextbox.text = ""
        mileTextbox.text = ""
    }
    @IBAction func yardOutFocus(_ sender: Any) {
        metersTextbox.text = ""
        footTextbox.text = ""
        kmTextbox.text = ""
        yardsTextbox.text = ""
        mileTextbox.text = ""
    }
    @IBAction func kmOutFocus(_ sender: UITextField) {
        metersTextbox.text = ""
        footTextbox.text = ""
        yardsTextbox.text = ""
        kmTextbox.text = ""
        mileTextbox.text = ""
    }
    @IBAction func mileOutFocus(_ sender: UITextField) {
        metersTextbox.text = ""
        footTextbox.text = ""
        mileTextbox.text = ""
        yardsTextbox.text = ""
        kmTextbox.text = ""
    }
}
