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
    
    
    var guiManager = UIManager()
    var calculatorBrain = CalculatorBrain()
    
    
    
    
    
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
    }
    
    @IBAction func pressedMultiplicationButton(_ sender: UIButton) {
    }
    
    @IBAction func pressedMinusButton(_ sender: UIButton) {
    }
    
    @IBAction func pressedPlusButton(_ sender: UIButton) {
        
        guiManager.setIsSelectedOperationButton(bool: true)
        guiManager.setIsDoneTypingNumber(bool: true)
        
        
    }
    
    @IBAction func pressedEqualButton(_ sender: UIButton) {
    }
    
    
    @IBAction func pressedNumbers(_ sender: UIButton) {
        
        guiManager.writeNumbers(from: sender, to: resultLabel)
        calculatorBrain.getNumbers(from: resultLabel)
        print(calculatorBrain.data1!)
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

