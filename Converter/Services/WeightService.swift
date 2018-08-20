//
//  WeightService.swift
//  Converter
//
//  Created by Naditha Deeyakaduwe on 8/13/18.
//  Copyright © 2018 Naditha Deeyakaduwe. All rights reserved.
//

struct WeightService {
    func grams_to_kilo(gram: String) -> String {
        let gramD: Double = Double(gram)!
        
        let kiloGram: Double = gramD/1000
        
        return String(kiloGram)
    }
    
    func grams_to_pounce(gram: String) -> String {
        let gramD: Double = Double(gram)!
        
        let pounce: Double = gramD/453.592
        
        return String(pounce)
    }
    
    func grams_to_ounce(gram: String) -> String {
        let gramD: Double = Double(gram)!
        
        let ounce: Double = gramD/28.3495
        
        return String(ounce)
    }
    
    func kilo_to_grams(kilo: String) -> String {
        let kiloD: Double = Double(kilo)!
        
        let Gram: Double = kiloD * 1000
        
        return String(Gram)
    }
    
    func kilo_to_pounce(kilo: String) -> String {
        let kiloD: Double = Double(kilo)!
        
        let pounce: Double = kiloD/0.453592
        
        return String(pounce)
    }
    
    func kilo_to_ounce(kilo: String) -> String {
        let kiloD: Double = Double(kilo)!
        
        let ounce: Double = kiloD/0.0283495
        
        return String(ounce)
    }
    
    func pounce_to_grams(pounce: String) -> String {
        let pounceD: Double = Double(pounce)!
        
        let grams: Double = pounceD/0.00220462
        
        return String(grams)
    }
    
    func pounce_to_kilo(pounce: String) -> String {
        let kiloD: Double = Double(pounce)!
        
        let pounce: Double = kiloD * 2.20462
        
        return String(pounce)
    }
    
    func pounce_to_ounce(pounce: String) -> String {
        let pounceD: Double = Double(pounce)!
        
        let ounce: Double = pounceD * 0.0625
        
        return String(ounce)
    }
    
    func ounce_to_pounce(ounce: String) -> String {
        let ounceD: Double = Double(ounce)!
        
        let pounce: Double = ounceD/0.0625
        
        return String(pounce)
    }
    
    func ounce_to_grams(ounce: String) -> String {
        let ounceD: Double = Double(ounce)!
        
        let gram: Double = ounceD * 28.3495
        
        return String(gram)
    }
    
    func ounce_to_kilo(ounce: String) -> String {
        let ounceD: Double = Double(ounce)!
        
        let kiloGram: Double = ounceD * 0.0283495
        
        return String(kiloGram)
    }
}
