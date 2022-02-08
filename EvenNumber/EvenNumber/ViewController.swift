//
//  ViewController.swift
//  EvenNumber
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 2/8/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TextEntered: UITextField!
    
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitButton(_ sender: UIButton) {
        var input = Int (TextEntered.text!)
        if(input!%2 == 0 ){
    
            DisplayLabel.text = "\(input!) is even number"
            
        }
        else{
            DisplayLabel.text = "\(input!) is odd number"
        }
    }
    
}

