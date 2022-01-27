//
//  ViewController.swift
//  SampleCaculator
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 1/27/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Display: UILabel!
    
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var calcOperator:Character = " "
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Button15(_ sender: UIButton) {
        Display.text = "15"
        if(operand1 == -1.1){
            operand1 = 15
        }
        else{
            operand2 = 16
            
        }
    }
    
    @IBAction func Button16(_ sender: UIButton) {
        Display.text = "16"
        if(operand2 == -1.1){
            operand2 = 16
        }
        else{
            operand1 = 15
        }
    }
    
    @IBAction func ButtonPlus(_ sender: UIButton) {
        Display.text = "+"
        if calcOperator == " "{
            calcOperator = "+"
        }
    }
    
    @IBAction func ButtonEquals(_ sender: UIButton) {
        Display.text = "="
        if calcOperator == "+"{
           // print(operand1)
            //printContent(operand2)
            Display.text = "\(operand1+operand2)"
        }
    }
    
    
}

