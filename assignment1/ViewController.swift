//
//  ViewController.swift
//  assignment1
//
//  Created by 井本智博 on 2023/11/14.
//

import UIKit

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
        
        let n1 = convertStringToInt(input: textField1.text!)
        let n2 = convertStringToInt(input: textField2.text!)
        let n3 = convertStringToInt(input: textField3.text!)
        let n4 = convertStringToInt(input: textField4.text!)
        let n5 = convertStringToInt(input: textField5.text!)
        
        let totalNumber = n1 + n2 + n3 + n4 + n5

        label.text = String(totalNumber)
    }
    
    func convertStringToInt(input: String) -> Int {

        let output = Int(input) ?? 0
        
        return output
    }

    
}

