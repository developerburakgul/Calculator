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
        isCalculatedAnyThing = nil
        resultLabel.text = "0"
        
        
    }
    
    @IBAction func pressedChangeSignButton(_ sender: Any) {
        
        if operation1 == nil {
            if resultLabel.text == "0" {
                resultLabel.text = "-0"
            }else if resultLabel.text == "-0"{
                resultLabel.text = "0"
            }

            if data1 != nil && data2 == nil {
                data1 = -data1
                result = data1
                resultLabel.text = String(result)
                print("Data 1 is changed an value is : \(data1!)")
                return
            }


        }else {
            if resultLabel.text != String(result) {
                if data2 == nil {
                    data2 = 0
                    resultLabel.text = String("-") + String(format: "%.0f", data2)
                }else {
                    data2 = -data2
                    print("data 2 is changed valuse is \(data2!)")
                    resultLabel.text = String(data2)
                    
                }
                

            }else if resultLabel.text == String(result) {
                result = -result
                data1 = result
                data2 = nil
                
                resultLabel.text = String(result)
                print("result is changed an value is : \(result!)")
                
            }
        }
        
        
        //        if resultLabel.text == "0" {
        //            resultLabel.text = "-0"
        //        }
        //
        //
        //
        //        if isCalculatedAnyThing != nil && result == data1{
        //            result = -result
        //            data1 = -data1
        //            resultLabel.text = String(result)
        //            return
        //
        //        }
        //
        //        result = -result
        //        resultLabel.text = String(result)
        //
        
        
        
        
        
        
        
        
        
        
        //        if
        //        if result == data1{
        //            result = -result
        //            data1 = -data1
        //        }
        //        print(result)
        //        print(data1)
        //
        //
        //        resultLabel.text = String(result)
        
        
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
        // yani  + - gibi işlem butonlarına basmamış ise
        if ((operation1 == nil) && (operation2 == nil)) {
            
            if resultLabel.text?.first != "-"{ // ekranda yazan sayı - ile başlamıyorsa
                
                if resultLabel.text == "0"  || resultLabel.text == "0.0"{
                    resultLabel.text = (sender.titleLabel?.text!)!
                    data1 = Float(resultLabel.text!)
                    print("data1 is \(data1!)")
                    
                }else {
                    resultLabel.text = resultLabel.text! + (sender.titleLabel?.text!)!
                    data1 = Float(resultLabel.text!)
                    print("data1 is \(data1!)")
                    
                    
                } // buraya kadar sayıyı ekrana yazar
                result = data1
            }else { // işaret olarak - ise -3 yazıyor ise 5 e basınca -35 olmalı
                
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
                print("buraya girdi 1 kez")
                if data1 == nil {
                    data1 = 0
                }
                
                
                
                if resultLabel.text == String(Int(data1!)) || resultLabel.text == String(format: "%.1f", data1!) {
                    
                    resultLabel.text = (sender.titleLabel?.text!)!
                    data2 = Float(resultLabel.text!)
                    print("data2 isss \(data2!)")
                    
                    
                    
                }
                else {
                    resultLabel.text = resultLabel.text! + (sender.titleLabel?.text!)!
                    data2 = Float(resultLabel.text!)
                    print("data2 issss \(data2!)")
                    
                }

                print(isCalculatedAnyThing)
                isCalculatedAnyThing = true
            } else {
                
                print("resultttttt : \(result)")
                print("data1111111 : \(data1)")
                data1 = result
                print("result : \(result)")
                print("data1  : \(data1)")
                
                
                
                
                
                if resultLabel.text == String(data1) { // || resultLabel.text == ("-" + String(data1))
                    print("girdi")
                    
                    resultLabel.text = (sender.titleLabel?.text!)!
                    data2 = Float(resultLabel.text!)
                    print("data2 is \(data2!)")
                    
                }else {
                    print("girdi2")
                    resultLabel.text = resultLabel.text! + (sender.titleLabel?.text!)!
                    data2 = Float(resultLabel.text!)
                    print("data2 is \(data2!)")
                    
                }
                
            }
            
            
        }
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

