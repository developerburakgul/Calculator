//
//  ViewController.swift
//  Calculator
//
//  Created by Burak Gül on 16.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // elemanlar
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplicationButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var changeSİgnButton: UIButton!
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var commaButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    
    var isSelectedOperationButton = false
    var isDoneTypingNumber = true
    var data1 : Float = 0.0
    var data2 : Float!
    var selectedOperation : String?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func pressedACButton(_ sender: UIButton) {
    }
    
    @IBAction func pressedChangeSignButton(_ sender: Any) {
    }
    
    @IBAction func pressedPercentButton(_ sender: UIButton) {
    }
    
    @IBAction func pressedDivideButton(_ sender: UIButton) {
        isSelectedOperationButton = true
        isDoneTypingNumber = true
        pressedEqualButton(sender)
        selectedOperation = "÷"
        pressedEqualButton(sender)
        
        
        
        resultLabel.text = String(data1)
    }
    
    @IBAction func pressedMultiplicationButton(_ sender: UIButton) {
        isSelectedOperationButton = true
        isDoneTypingNumber = true
        pressedEqualButton(sender)
        selectedOperation = "X"
        pressedEqualButton(sender)
        
        
        
        resultLabel.text = String(data1)
    }
    
    @IBAction func pressedMinusButton(_ sender: UIButton) {
        isSelectedOperationButton = true
        isDoneTypingNumber = true
        pressedEqualButton(sender)
        selectedOperation = "-"
        pressedEqualButton(sender)
        
        
        
        resultLabel.text = String(data1)
    }
    
    @IBAction func pressedPlusButton(_ sender: UIButton) {
        isSelectedOperationButton = true
        isDoneTypingNumber = true
        pressedEqualButton(sender)
        
        selectedOperation = "+"
        
        
        resultLabel.text = String(data1)
        
        
        
        
    }
    
    @IBAction func pressedEqualButton(_ sender: UIButton) {
        switch selectedOperation {
        case "+":
            if data2 != nil {
                data1 = data1 + data2
                
            }
            resultLabel.text = String(data1)
        case "-":
            if data2 != nil {
                data1 = data1 - data2
                
            }
            resultLabel.text = String(data1)
        case "X":
            
            if data2 != nil {
                data1 = data1 * data2
                
            }
            resultLabel.text = String(data1)
            
            
            
            
        case "÷":
            if data2 != nil {
                data1 = data1 / data2
                data2 = 1
            }
            resultLabel.text = String(data1)
            
            
        default:
            print("defaulta düşüt")
        }
    }


@IBAction func pressedNumbers(_ sender: UIButton) {
    
    if isSelectedOperationButton {
        
        if isDoneTypingNumber {
            resultLabel.text = sender.titleLabel?.text
            isDoneTypingNumber = false
            data2 = Float(resultLabel.text!)
            print("data2 is : \(data2!)")
            return
            
        }
        resultLabel.text = resultLabel.text! + (sender.titleLabel?.text!)!
        data2 = Float(resultLabel.text!)
        print("data2 is : \(data2!)")
        
        
        
        
        
        
    }else {
        if resultLabel.text == "0"{
            resultLabel.text = sender.titleLabel?.text
            data1 = Float(resultLabel.text!)!
            print("data1 is : \(data1)")
            return
        }
        resultLabel.text = resultLabel.text! + (sender.titleLabel?.text!)!
        data1 = Float(resultLabel.text!)!
        print("data1 is : \(data1)")
    }
    
    
    
}














}

