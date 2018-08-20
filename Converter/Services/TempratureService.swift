//
//  TempratureService.swift
//  Converter
//
//  Created by Naditha Deeyakaduwe on 8/14/18.
//  Copyright © 2018 Naditha Deeyakaduwe. All rights reserved.
//

struct TempratureService {
    
    func celcius_to_farenheit(clecious: String) -> String {
        let fahrenheitTemperature = Double(clecious)! * 9 / 5 + 32
        return String(fahrenheitTemperature)
    }
    
    func farenheit_to_celcius(fahrenheit: String) -> String {
        return String(5.0 / 9.0 * (Double(fahrenheit)! - 32.0))
    }
    
    func kelvin_to_celcious(kelvin: String) -> String {
        let temperatureInCelsius = Double(kelvin)! - 273.15
        return String(temperatureInCelsius)
    }
    
    func clecius_to_kelvin(celcious: String) -> String {
        let temperatureInkelvin = Double(celcious)! + 273.15
        return String(temperatureInkelvin)
    }
    
    func kelvin_to_farenheit(kelvin: String) -> String {
        let tempFarenheit = 1.8 * ((Double(kelvin)!) - 273) + 32
        return String(tempFarenheit)
    }
    
    func ferenheit_to_kelvin(ferenheit: String) -> String {
        let tempKelvin = ((Double(ferenheit)! / 1.8) - 32) + 273
        return String(tempKelvin)
    }
    
}
