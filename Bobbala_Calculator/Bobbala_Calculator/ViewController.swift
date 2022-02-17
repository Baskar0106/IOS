//
//  ViewController.swift
//  Bobbala_Calculator
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 2/17/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayLabel: UILabel!
    var firstOpearand:String = ""
            var sum = " "
        var dec=" "
        var displayNumber = " "
        var secondOperand:String = ""
            var C = ""
        var e=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        displayNumber = ""
        secondOperand = ""
                    firstOpearand  = ""
                    
                    sum = ""
                    C = ""
                    displayLabel.text = "0"
        
        
    }
    @IBAction func buttonC(_ sender: UIButton) {
        if(secondOperand==""){
                        
                    }else{
                        secondOperand=""
                    }
        displayLabel.text=secondOperand
        
        
    }
    
    @IBAction func buttonChangeSign(_ sender: UIButton) {
        
        displayLabel.text = String(Double(displayLabel.text!)! * -1)
        
    }
    @IBAction func buttonDivide(_ sender: UIButton) {
        displayLabel.text=displayLabel.text!+"/"
                    C = "/"
    }
    @IBAction func buttonMultiply(_ sender: UIButton) {
        
        displayLabel.text=displayLabel.text!+"x"
                   C = "*"
        
    }
    @IBAction func buttonSubtract(_ sender: UIButton) {
        
        if(dec=="" && firstOpearand == ""){
                        firstOpearand = "-" + firstOpearand
            displayLabel.text=firstOpearand
                    }else{
                        displayLabel.text=displayLabel.text! + "-"
                    C = "-"
                        displayLabel.text = C
                    //performOperation(operator: "-")
                    }
                    C = "-"
        displayLabel.text = C
        
    }
    @IBAction func buttonAdd(_ sender: UIButton) {
        
        displayLabel.text=displayLabel.text!+"+"
                    C = "+"
    }
    @IBAction func buttonEquals(_ sender: UIButton) {
        displayLabel.text = firstOpearand+C+secondOperand

                   performOperation(operator: C)
        
    }
    @IBAction func buttonPercent(_ sender: UIButton) {
        displayLabel.text="%"
                C = "%"
                displayLabel.text="%"
        
    }
    @IBAction func buttonDot(_ sender: UIButton) {
        
        if C == ""{
                    firstOpearand=firstOpearand+"."
                    displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"."
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                }
    }
    @IBAction func buttonZero(_ sender: UIButton) {
        
        if C == ""{
                    firstOpearand=firstOpearand+"0"
                    
            displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"0"
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                        
                }
    }
    @IBAction func buttonOne(_ sender: UIButton) {
        
        if C == ""{
                    firstOpearand=firstOpearand+"1"
                    
                    displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"1"
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                }
    }
    @IBAction func buttonTwo(_ sender: UIButton) {
        if C == ""{
                    firstOpearand=firstOpearand+"2"
                    displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"2"
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                        
                }
        
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        if C == ""{
                    firstOpearand=firstOpearand+"3"
                    displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"3"
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                    
                }
        
    }
    @IBAction func buttonFour(_ sender: UIButton) {
        if C == ""{
                    firstOpearand=firstOpearand+"4"
                    //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
                    displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"4"
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                    
                }
    }
    @IBAction func buttonFive(_ sender: UIButton) {
        
        if C == ""{
                    firstOpearand=firstOpearand+"5"
                    displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"5"
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                }
    }
    @IBAction func buttonSix(_ sender: UIButton) {
        if C == ""{
                    firstOpearand=firstOpearand+"6"
                    displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"6"
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                }
        
    }
    @IBAction func buttonSeven(_ sender: UIButton) {
        if C == ""{
                    firstOpearand=firstOpearand+"7"
                    displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"7"
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                }
        
    }
    @IBAction func buttonEight(_ sender: UIButton) {
        
        if C == ""{
                    firstOpearand=firstOpearand+"8"
                    displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"8"
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                }
    }
    @IBAction func buttonNine(_ sender: UIButton) {
        if C == ""{
                    firstOpearand=firstOpearand+"9"
                    displayLabel.text="\(firstOpearand)"
                    dec="first"
                }else {
                    secondOperand=secondOperand+"9"
                    dec="second"
                    displayLabel.text="\(secondOperand)"
                }
    
    }
    
    func performOperation(operator: String){
                var Sum=" "
                if(firstOpearand.contains(".")||secondOperand.contains(".")){
                    
                }
                if C != " " {
                  
                      
                        
                        switch C{
                        case "+":
                             Sum = String(Double(firstOpearand)! + Double(secondOperand)!)
                            //sum = outputFormat(Sum)
                         
                        case "-":
                             Sum = String(Double(firstOpearand)! - Double(secondOperand)!)
                            
                            //if operation == "-"{
                                     //     num1 = String(Double(num1)! - //Double(num2)!)
                                         // currNum = num2
                                         // num2 = ""
                                          
                                          //return String(num1
                                          
                                          
                                          
                        case "*":
                             Sum = String(Double(firstOpearand)! * Double(secondOperand)!)
                            //sum = outputFormat(mult)
                        case "%":
                            /* Sum = String(Double(firstOpearand)! % Double(SecoundOperand)!)*/
                            let x=Double(firstOpearand)!
                            let q=Double(secondOperand)!
                            let r = x.truncatingRemainder(dividingBy: q)
                             Sum=String(r)
                        case "/":
                            if Double(secondOperand)! == 0.0{
                                e="Error"
                                displayLabel.text = "Error"
                                break;
                            }else{
                                 Sum = "\(Double(firstOpearand)!/Double(secondOperand)!)"
                               // Sum = outputFormat(div)
                                break;
                            }
                            
                        default:
                            sum = ""
                        }
                        
                    }
                if(e=="Error"){
                    displayLabel.text = "Error"

                }else{
                
                let value = Double(Sum)!
                var resultStr = String(round(value * 100000) / 100000.0)
                
                if resultStr.contains(".0"){
                    resultStr.removeSubrange(resultStr.index(resultStr.endIndex, offsetBy: -2)..<resultStr.endIndex)
                }
                displayLabel.text=resultStr
                }
                  
            }
    
    

}

