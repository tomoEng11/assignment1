//
//  ViewController.swift
//  assignment1
//
//  Created by 井本智博 on 2023/11/14.
//

import UIKit

var totalNumber: Int = 0

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.textField1.keyboardType = .numberPad
        self.textField2.keyboardType = .numberPad
        self.textField3.keyboardType = .numberPad
        self.textField4.keyboardType = .numberPad
        self.textField5.keyboardType = .numberPad
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let n1 = StringToInt(input: textField1.text!)
        let n2 = StringToInt(input: textField2.text!)
        let n3 = StringToInt(input: textField3.text!)
        let n4 = StringToInt(input: textField4.text!)
        let n5 = StringToInt(input: textField5.text!)
        
        totalNumber = n1 + n2 + n3 + n4 + n5
        
        label.text = String(totalNumber)
    }
    
    func StringToInt(input: String) -> Int {
       
        let output = Int(input) ?? 0
        
     return output
    }

    
}

