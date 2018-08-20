//
//  DistanceService.swift
//  Converter
//
//  Created by Naditha Deeyakaduwe on 8/16/18.
//  Copyright © 2018 Naditha Deeyakaduwe. All rights reserved.
//

struct DistanceServices {
    func meters_to_foots(meters: String) -> String {
        let metersD = Double(meters)
        let convertedValue = metersD! * 3.28084
        return String(convertedValue)
    }
    
    func kiloMeters_to_foots(kilometers: String) -> String {
        let kiloMetersD = Double(kilometers)
        let convertedValue = kiloMetersD! * 3280.84
        return String(convertedValue)
    }
    
    func yards_to_foots(yards: String) -> String {
        let yardsD = Double(yards)
        let convertedValue = yardsD! * 3
        return String(convertedValue)
    }
    
    func miles_to_foots(miles: String) -> String {
        let milesD = Double(miles)
        let convertedValue = milesD! * 5280
        return String(convertedValue)
    }
    
    func foot_to_meters(foots: String) -> String {
        let footD = Double(foots)
        let convertedValue = footD! * 3.28084
        return String(convertedValue)
    }
    
    func yards_to_meters(yard: String) -> String {
        let yardD = Double(yard)
        let convertedValue = yardD! * 0.9144
        return String(convertedValue)
    }
    
    func kiloMeters_to_meters(kilo: String) -> String {
        let kiloD = Double(kilo)
        let convertedValue = kiloD! * 1000
        return String(convertedValue)
    }
    
    func miles_to_meters(mile: String) -> String {
        let mileD = Double(mile)
        let convertedValue = mileD! * 1609.34
        return String(convertedValue)
    }
    
    func meters_to_yards(meters: String) -> String {
        let meterD = Double(meters)
        let convertedValue = meterD! / 0.9144
        return String(convertedValue)
    }
    
    func foots_to_yards(foot: String) -> String {
        let footD = Double(foot)
        let convertedValue = footD! / 3
        return String(convertedValue)
    }
    
    func kilometers_to_yards(km: String) -> String {
        let kmD = Double(km)
        let convertedValue = kmD! / 0.0009144
        return String(convertedValue)
    }
    
    func miles_to_yards(mile: String) -> String {
        let mileD = Double(mile)
        let convertedValue = mileD! / 0.000568182
        return String(convertedValue)
    }
    
    func meters_to_km(meter: String) -> String {
        let meterD = Double(meter)
        let convertedValue = meterD! / 1000
        return String(convertedValue)
    }
    
    func foot_to_km(foot: String) -> String {
        let footD = Double(foot)
        let convertedValue = footD! / 3280.84
        return String(convertedValue)
    }
    
    func yard_to_km(yard: String) -> String {
        let yardD = Double(yard)
        let convertedValue = yardD! / 1093.61
        return String(convertedValue)
    }
    
    func miles_to_km(mile: String) -> String {
        let mileD = Double(mile)
        let convertedValue = mileD! / 0.621371
        return String(convertedValue)
    }
    
    func meters_to_miles(meter: String) -> String {
        let meterD = Double(meter)
        let convertedValue = meterD! / 1609.34
        return String(convertedValue)
    }
    
    func foot_to_miles(foot: String) -> String {
        let footD = Double(foot)
        let convertedValue = footD! / 5280
        return String(convertedValue)
    }
    
    func yard_to_miles(yard: String) -> String {
        let yardD = Double(yard)
        let convertedValue = yardD! / 1760
        return String(convertedValue)
    }
    
    func kilometers_to_miles(km: String) -> String {
        let kmD = Double(km)
        let convertedValue = kmD! / 1.60934
        return String(convertedValue)
    }
}
