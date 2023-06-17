//
//  UIManager.swift
//  Calculator
//
//  Created by Burak Gül on 17.06.2023.
//

import UIKit




struct UIManager {
    
    var isSelectedOperationButton = false
    var isDoneTypingNumber = true
    
    
    
    
    
    
    
    mutating func writeNumbers(from button : UIButton,to label : UILabel) {
        if isSelectedOperationButton {
            
            if isDoneTypingNumber {
                label.text = button.titleLabel?.text
                isDoneTypingNumber = false
                return
                
            }
            label.text = label.text! + (button.titleLabel?.text!)!
            
            
            
            
            
        }else {
            if label.text == "0"{
                label.text = button.titleLabel?.text
                return
            }
            label.text = label.text! + (button.titleLabel?.text!)!
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // get set methods
    
    mutating func setIsSelectedOperationButton(bool : Bool)  {
        self.isSelectedOperationButton = bool
    }
    
    func getIsSelectedOperationButton() -> Bool {
            return isSelectedOperationButton
    }
    
    mutating func setIsDoneTypingNumber(bool : Bool)  {
        self.isDoneTypingNumber = bool
    }
    
    func getIsDoneTypingNumber() -> Bool {
        return isDoneTypingNumber
    }
    
    
    
    
    
    
}
