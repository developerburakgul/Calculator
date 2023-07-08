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
    
    
    
    var result     : Float! = 0
    var data1      : Float!  = nil
    var data2      : Float!  = nil
    var data3      : Float!  = nil
    var operation1 : String! = nil
    var operation2 : String! = nil
    var previousOperation : String! = nil
    var isCalculatedAnyThing : Bool! = nil
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func pressedACButton(_ sender: UIButton) {
        result = 0
        data1 = nil
        data2 = nil
        data3 = nil
        operation1 = nil
        operation2 = nil
        previousOperation = nil
        resultLabel.text = "0"
        
        
    }
    
    @IBAction func pressedChangeSignButton(_ sender: Any) {
        if result == data1{
            result = -result
            data1 = -data1
        }
        print(data1)
        print(result)
        
        resultLabel.text = String(result)
        
        
    }
    
    @IBAction func pressedPercentButton(_ sender: UIButton) {
    }
    
    @IBAction func pressedDivideButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedMultiplicationButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedMinusButton(_ sender: UIButton) {
        if previousOperation == nil {
            previousOperation = "-"
            print("previous operation - olarak ayarlandı")
        }
       
        operation1 = "-"
        print("operation 1  - oldu")
        
        if data1 != nil && data2 != nil {
            pressedEqualButton(equalButton)
            previousOperation = operation1
        }
        
    }
    
    @IBAction func pressedPlusButton(_ sender: UIButton) {
        if previousOperation == nil {
            previousOperation = "+"
            print("previous operation + olarak ayarlandı")
            
        }
        operation1 = "+"
        print("operation 1 is + oldu")
        
        
        
        if data1 != nil && data2 != nil {
            pressedEqualButton(equalButton)
            previousOperation = operation1
            
        }
        
        
        
        
        
        
        
        
    }
    
    @IBAction func pressedEqualButton(_ sender: UIButton) {
        if operation1 != nil && operation2 == nil {
            switch previousOperation {
            case "+":
                
                    result = data1 + data2
                    resultLabel.text = String(result)
               
                
            case "-":
                result = data1 - data2
                resultLabel.text = String(result)
                
            default:
                print("sanaeee")
            }
            
        }
        
    }
    
    
    @IBAction func pressedNumbers(_ sender: UIButton) {
        // başlangıçta operasyonlar seçilmemiştir
        if ((operation1 == nil) && (operation2 == nil)) {
            
            if resultLabel.text?.first != "-"{
                
                if resultLabel.text == "0"  || resultLabel.text == "0.0"{
                    resultLabel.text = (sender.titleLabel?.text!)!
                    data1 = Float(resultLabel.text!)
                    print("data1 is \(data1!)")
                    
                }else {
                    resultLabel.text = resultLabel.text! + (sender.titleLabel?.text!)!
                    data1 = Float(resultLabel.text!)
                    print("data1 is \(data1!)")
                    
                    
                }
                result = data1
            }else {
                
                if resultLabel.text == "-0"  || resultLabel.text == "-0.0"{
                    resultLabel.text = "-" + (sender.titleLabel?.text!)!
                    data1 = Float(resultLabel.text!)!
                    print("data1 is \(data1!)")
                    
                }else {
                    resultLabel.text = resultLabel.text! + (sender.titleLabel?.text!)!
                    data1 = Float(resultLabel.text!)!
                    print("data1 is \(data1!)")
                    
                    
                }
                result = data1
                
            }
        }
        
        if operation1 != nil && operation2 == nil {
            
            if isCalculatedAnyThing == nil {
                if data1 == nil {
                    data1 = 0
                }
                if resultLabel.text == String(Int(data1!)) || resultLabel.text == String(format: "%.1f", data1!) {
                    
                    resultLabel.text = (sender.titleLabel?.text!)!
                    data2 = Float(resultLabel.text!)
                    print("data2 is \(data2!)")
                    isCalculatedAnyThing = true
                    
                }else {
                    resultLabel.text = resultLabel.text! + (sender.titleLabel?.text!)!
                    data2 = Float(resultLabel.text!)
                    print("data2 is \(data2!)")
                    
                }
            }else {
                
                data1 = result
                
                
                if resultLabel.text == String(data1){
                    
                    resultLabel.text = (sender.titleLabel?.text!)!
                    data2 = Float(resultLabel.text!)
                    print("data2 is \(data2!)")
                    
                }else {
                    resultLabel.text = resultLabel.text! + (sender.titleLabel?.text!)!
                    data2 = Float(resultLabel.text!)
                    print("data2 is \(data2!)")
                    
                }
                
            }
            
            
        }
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

