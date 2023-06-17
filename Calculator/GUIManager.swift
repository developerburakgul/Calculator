//
//  UIManager.swift
//  Calculator
//
//  Created by Burak Gül on 17.06.2023.
//

import UIKit




struct GUIManager {
    
    var isSelectedOperationButton = false
    var isDoneTypingNumber = true
    
    
    
    
    
    
    
    mutating func writeNumbers(from button : UIButton,to label : UILabel) {
        
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
