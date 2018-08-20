//
//  SpeedService.swift
//  Converter
//
//  Created by Naditha Deeyakaduwe on 8/16/18.
//  Copyright © 2018 Naditha Deeyakaduwe. All rights reserved.
//

struct SpeedService {
    func feetPS_to_meterPH(fps: String) -> String {
        let fpsD = Double(fps)
        let convertedValue = fpsD! * 0.3048
        return String(convertedValue)
    }
    
    func kmh_to_meterPH(kmh: String) -> String {
        let kmhD = Double(kmh)
        let convertedValue = kmhD! / 3.6
        return String(convertedValue)
    }
    
    func kmh_to_fps(kmh: String) -> String {
        let kmhD = Double(kmh)
        let convertedValue = kmhD! / 1.09728
        return String(convertedValue)
    }
    
    func mps_to_fps(mps: String) -> String {
        let mpsD = Double(mps)
        let convertedValue = mpsD! / 0.3048
        return String(convertedValue)
    }
    func fps_to_kmh(fps: String) -> String {
        let fpsD = Double(fps)
        let convertedValue = fpsD! / 0.911344
        return String(convertedValue)
    }
    
    func mps_to_kmh(mps: String) -> String {
        let mpsD = Double(mps)
        let convertedValue = mpsD! / 0.277778
        return String(convertedValue)
    }
}
