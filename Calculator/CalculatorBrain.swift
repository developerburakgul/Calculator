//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Burak Gül on 16.06.2023.
//

import UIKit

struct CalculatorBrain {
    
    
    var data1 : Float!
    
    
    
    
    
    
    
    
    mutating func getNumbers(from label : UILabel){
        
        let string = label.text!
        let number = Float(string)!
        data1 = number
    }
    
    
    
    
    
}
